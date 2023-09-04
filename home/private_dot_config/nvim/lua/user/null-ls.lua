local M = {
  "jose-elias-alvarez/null-ls.nvim",
  event = "BufReadPre",
  commit = "60b4a7167c79c7d04d1ff48b55f2235bf58158a7",
  dependencies = {
    {
      "nvim-lua/plenary.nvim",
      commit = "9a0d3bf7b832818c042aaf30f692b081ddd58bd9",
      lazy = true,
    },
  },
}

function M.config()
  local null_ls = require "null-ls"
  local formatting = null_ls.builtins.formatting
  local diagnostics = null_ls.builtins.diagnostics
  local completion = null_ls.builtins.completion
  local format_group = vim.api.nvim_create_augroup("LspFormatting", { clear = true })

  null_ls.setup {
    debug = true,
    sources = {
      formatting.prettier.with {
        extra_filetypes = { "toml" },
      },
      formatting.black,
      formatting.goimports,
      formatting.gofumpt,
      formatting.stylua,
      diagnostics.eslint,
      diagnostics.flake8,
      completion.spell,
    },
    on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = format_group, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = format_group,
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({ async = false })
          end,
        })
      end
    end,
  }
end

return M
