-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)

vim.api.nvim_create_augroup("JSLog", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = "JSLog",
  pattern = { "javascript", "typescript", "typescriptreact" },
  callback = function()
    vim.fn.setreg("l", "yoconsole.log({" .. esc .. "p})")
  end,
})

local function add_ignore()
  local bufnr = vim.api.nvim_get_current_buf()
  local cursor_pos = vim.api.nvim_win_get_cursor(0)
  local line = cursor_pos[1]

  -- Get diagnostics from LSP for the current buffer
  local diagnostics = vim.diagnostic.get(bufnr)

  for _, diag in ipairs(diagnostics) do
    if diag.lnum + 1 == line and diag.source == "Pyright" then
      local error_code = diag.code -- Extract the Pyright error code
      if error_code then
        local current_line = vim.api.nvim_buf_get_lines(bufnr, line - 1, line, false)[1]
        local updated_line = current_line .. "  # pyright: ignore[" .. error_code .. "]"

        -- Update the line in the buffer
        vim.api.nvim_buf_set_lines(bufnr, line - 1, line, false, { updated_line })

        -- Move to the next line (simulate "j" in normal mode)
        vim.api.nvim_win_set_cursor(0, { line + 1, 0 })
      end
      return
    end
  end
end

vim.api.nvim_create_augroup("PythonIgnore", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = "PythonIgnore",
  pattern = { "python" },
  callback = function()
    vim.keymap.set("n", "<leader>pi", add_ignore, { desc = "Add ignore" })
  end,
})
