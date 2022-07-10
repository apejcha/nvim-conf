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

local on_attach = function (client,bufnr)
   local bufopts = {noremap = true,silent = true,buffer=bufnr}
    vim.keymap.set("n","K", vim.lsp.buf.hover,bufopts)
    vim.keymap.set("n","gd", vim.lsp.buf.definition,bufopts )
    vim.keymap.set("n","gt", vim.lsp.buf.type_definition,bufopts )
    vim.keymap.set("n","gi", vim.lsp.buf.implementation,bufopts)
    vim.keymap.set("n","<leader>df", vim.diagnostic.goto_next,bufopts )
    vim.keymap.set("n","<leader>dp", vim.diagnostic.goto_prev,bufopts )
    vim.keymap.set("n","<leader>ds", vim.diagnostic.open_float,bufopts)
    vim.keymap.set("n","<leader>dl", "<cmd>Telescope diagnostics<cr>",bufopts )
end

local lspconfig = require("lspconfig")
lspconfig.rust_analyzer.setup{
  on_attach =on_attach,
  capabilities = capabilities,
}

lspconfig.tsserver.setup{
  on_attach =on_attach,
  capabilities = capabilities,
}

lspconfig.tailwindcss.setup{
  on_attach =on_attach,
  capabilities = capabilities,
}

lspconfig.sumneko_lua.setup{
  on_attach =on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        global = {'vim'},
      },
      workspace = {
				-- Make the server aware of Neovim runtime files
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
				},
			},
    }
  }
}
