return {
  "saghen/blink.cmp",

  version = "*",

  opts = {
    completion = {
      menu = {
        border = "rounded",
        scrollbar = false,
        max_height = 8,

        draw = {
          padding = 2,
          gap = 3,
          columns = {
            { "label", "label_description", gap = 3 },
            { "kind", gap = 3 },
          },
        },
      },
    },

    keymap = {
      preset = "none",
      ['<Tab>'] = { 'select_next', 'fallback' },
      ['<S-Tab>'] = { 'select_prev', 'fallback' },
      ['<C-,>'] = { 'show', 'fallback' },
      ['<C-q>'] = { 'hide', 'fallback' },

      ['<CR>'] = { 'accept', 'fallback' },
    },

    appearance = {
      use_nvim_cmp_as_default = false,
    },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  },
  opts_extend = { "sources.default" }
}
