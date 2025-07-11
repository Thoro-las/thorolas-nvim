vim.api.nvim_create_autocmd("FileType", {
  pattern = "fsharp",
  callback = function()
    vim.bo.commentstring = "// %s"
  end
})
