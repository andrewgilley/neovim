local M = {}

local function is_multiline(node)
  local start_row, _, end_row, _ = node:range()
  return end_row > start_row
end

local function get_statement_children(node)
  local statements = {}
  for i = 0, node:named_child_count() - 1 do
    local child = node:named_child(i)
    local t = child:type()
    -- Filter out comments and non-statement nodes
    if t ~= "comment" and not t:match("^%p+$") then
      table.insert(statements, child)
    end
  end
  return statements
end

local function collect_boundaries(node, boundaries)
  if node:type() == "chunk" or node:type() == "block" then
    local statements = get_statement_children(node)
    local total = #statements

    for i, child in ipairs(statements) do
      local _, _, end_row, _ = child:range()
      local child_multi = is_multiline(child)

      if i < total then
        local next_child = statements[i + 1]
        local next_multi = is_multiline(next_child)

        if child_multi or next_multi then
          boundaries[end_row] = true
        end
      end
    end
  end

  for i = 0, node:named_child_count() - 1 do
    local child = node:named_child(i)
    collect_boundaries(child, boundaries)
  end
end

function M.format(code)
  local raw_lines = vim.split(code, "\n", { plain = true })
  local clean_lines = {}
  for _, line in ipairs(raw_lines) do
    if line:match("%S") then
      table.insert(clean_lines, line)
    end
  end

  if #clean_lines == 0 then
    return ""
  end

  local clean_code = table.concat(clean_lines, "\n")

  local parser = vim.treesitter.get_string_parser(clean_code, "lua")
  local tree = parser:parse()[1]
  if not tree then
    return code
  end

  local root = tree:root()

  local boundaries = {}
  collect_boundaries(root, boundaries)

  local formatted = {}
  for row_idx, line in ipairs(clean_lines) do
    local row_0idx = row_idx - 1
    table.insert(formatted, line)

    if boundaries[row_0idx] and row_idx < #clean_lines then
      table.insert(formatted, "")
    end
  end

  return table.concat(formatted, "\n")
end

function M.format_buffer(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()
  if vim.bo[bufnr].filetype ~= "lua" then
    return
  end

  local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
  local formatted = M.format(table.concat(lines, "\n"))
  local new_lines = vim.split(formatted, "\n", { plain = true })
  vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, new_lines)
end

function M.setup()
  vim.api.nvim_create_user_command("LuaParagraphFormat", function()
    M.format_buffer(0)
  end, { desc = "Format Lua statements with paragraph spacing" })
end

return M
