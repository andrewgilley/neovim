return {
  "andrewgilley/oculus.nvim",
  build = "cargo build --release --manifest-path crates/oculus-engine/Cargo.toml",
  config = function()
    require("oculus").setup({
      width = function() return math.floor(vim.o.columns * 0.820) end,
      height = function() return math.floor(vim.o.lines * 0.796) end,
    })

    vim.keymap.set("n", "<leader>oc", "<cmd>OculusToggle<CR>", {
      desc = "Toggle Oculus",
      silent = true,
    })
  end,
}
