require('luasnip').setup()

local ls = require('luasnip')

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local snippets = {

}

ls.add_snippets('lua', snippets)
