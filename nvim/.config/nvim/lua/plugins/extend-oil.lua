return {
  "stevearc/oil.nvim",
  opts = function()
    vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end,
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
}
