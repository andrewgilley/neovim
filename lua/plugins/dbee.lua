return {
  {
    "kndndrj/nvim-dbee",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },

    build = function()
      require("dbee").install()
    end,

    cmd = "Dbee",

    keys = {
      {
        "<leader>db",
        function()
          require("dbee").toggle()
        end,
        desc = "Toggle DBee",
      },
    },

    config = function()
      require("dbee").setup({
        sources = {
          require("dbee.sources").FileSource:new(
            vim.fn.stdpath("state") .. "/dbee/connections.json"
          ),
        },
      })
    end,
  },
}
