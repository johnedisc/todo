local bufnr = 5

vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("k_bola", { clear = true }),
  pattern = "scripts.js",
  callback = function ()
    vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "output of scripts.js" })
    vim.fn.jobstart({"node", "scripts.js"}, {
     stdout_buffered = true,
     on_stdout = function (_, data)
      if data then
        vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
      end
     end,
     on_stderr = function (_, data)
      if data then
        vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
      end
     end,
    })
  end,
})
