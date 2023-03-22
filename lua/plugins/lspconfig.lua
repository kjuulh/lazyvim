return {
  "neovim/nvim-lspconfig",
  opts = {
    ---@type lspconfig.options
    servers = {
      pylsp = {
        settings = {
          pylsp = {
            plugins = {
              autopep8 = {
                enabled = false
              },
              yapf = {
                enabled = false
              },
              pylint = {
                enabled = true
              },
              flake8 = {
                enabled = true
              },
              ["pylsp-mypy"] = {
                enabled = true,
                livemode = true
              },
              ["pylsp-rope"] = {
                enabled = true
              },
              ["pyls-isort"] = {
                enabled = true
              },
              ["python-lsp-black"] = {
                enabled = true
              },
              ["pyls-memestra"] = {
                enabled = true
              },
            }
          }
        }
      }
    }
  }
}
