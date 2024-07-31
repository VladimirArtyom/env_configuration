require('nvim-ts-autotag').setup({
  autotag = {
    enable = true,
    enable_rename=true,
    enable_close=true,
    enable_close_on_slash=true,
    filetypes = {"html", "xml", "javascriptreact",
      "javascript", "jsx", "js",
      "tsx", "typescriptreact"},
    indent = {
      enable = true
    }
  },
})
