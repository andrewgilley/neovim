return {
  "saghen/blink.cmp",

  version = "*",

  opts = {
    completion = {
      menu = {
        border = "rounded",

        draw = {
          padding = 2,
          gap = 3,
          columns = {
            { "kind", gap = 2 },
            { "label", "label_description", gap = 3 }
          },
        },
      },
    },

    keymap = {
      preset = "none" ,

      ['<Tab>'] = { 'select_next', 'fallback' },
      ['<S-Tab>'] = { 'select_prev', 'fallback' },

      ['<CR>'] = { 'accept', 'fallback' },
    },

    appearance = {
      use_nvim_cmp_as_default = true,
    },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  },
  opts_extend = { "sources.default" }
}
