--LSP isntaller
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.setup({
  automatic_installation = true,
  ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local lspconfig = require("lspconfig")


lspconfig.sumneko_lua.setup{
  opts ={
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'},
      }
    }
  }
}
}

lspconfig.rust_analyzer.setup{}
lspconfig.tsserver.setup{}

