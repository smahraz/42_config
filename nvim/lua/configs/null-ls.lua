local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    require("none-ls.diagnostics.flake8"),
    require("none-ls.diagnostics.ruff"),
  },
})
