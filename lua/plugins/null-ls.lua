return {
  "jose-elias-alvarez/null-ls.nvim",
  event = "BufReadPre",
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.formatting.terraform_fmt,
        --nls.builtins.formatting.rustfmt,
        --nls.builtins.formatting.yamlfmt,
        nls.builtins.formatting.deno_fmt.with({
          filetypes = { "markdown" }
        }),
        nls.builtins.formatting.golines,
        nls.builtins.formatting.goimports_reviser,
        nls.builtins.formatting.goimports,
        nls.builtins.formatting.gofumpt,
        nls.builtins.formatting.taplo,
        nls.builtins.code_actions.gitsigns,
        nls.builtins.code_actions.refactoring,
      },
    }
  end,
}
