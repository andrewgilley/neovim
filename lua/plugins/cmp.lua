local cmp = require('cmp')

require('cmp').setup({
  window = {
    completion = cmp.config.window.bordered({
      col_offset = 3,
      side_padding = 1,
      scrollbar = false,
    }),

    documentation = cmp.config.window.bordered({
      scrollbar = false,
    }),
  },

  mapping = cmp.mapping.preset.insert({
    ['<C-i>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    ['<C-k>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['q'] = cmp.mapping.abort(),
    ['<Esc>'] = cmp.mapping.abort(),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),

  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'nvim_lsp_signature_help' },
    { name = 'buffer' },
    { name = 'path' },
  })
})
