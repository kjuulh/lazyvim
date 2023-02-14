return {
  "jose-elias-alvarez/null-ls.nvim",
  event = "BufReadPre",
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.formatting.terraform_fmt,
        nls.builtins.formatting.rustfmt,
        nls.builtins.formatting.yamlfmt,
        nls.builtins.formatting.deno_fmt.with({
          filetypes = { "markdown" }
        }),
      },
    }
  end,
}
