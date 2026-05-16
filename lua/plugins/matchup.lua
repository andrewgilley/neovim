return {
  "andymass/vim-matchup",

  init = function()
    vim.g.matchup_matchparen_offscreen = { method = "popup" }
  end,

  config = function()
    vim.treesitter.query.set("lua", "matchup", [[
(for_statement
  "do" @open.loop
  "end" @close.loop) @scope.loop

(while_statement
  "do" @open.loop
  "end" @close.loop) @scope.loop

(repeat_statement
  "repeat" @open.loop
  "until" @close.loop) @scope.loop

(if_statement
  "if" @open.if
  "end" @close.if) @scope.if

(else_statement
  "else" @mid.if.1)

(elseif_statement
  "elseif" @mid.if.2)

(function_declaration
  "function" @open.function
  "end" @close.function) @scope.function

(function_definition
  "function" @open.function
  "end" @close.function) @scope.function

(do_statement
  "do" @open.block
  "end" @close.block) @scope.block
]])
  end,
}
