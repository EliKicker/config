require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "hls", "matlab_ls", "texlab", "bashls", "pyright", "marksman" }
})

local on_attach = function(_, _)
	vim.keymap.set('n', '<Space>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<Space>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
	vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

--require("lspconfig").lua_ls.setup {
--	on_attach = on_attach
--}
require("lspconfig").lua_ls.setup {
	on_attach = on_attach,
  --capabilities = capabilities,
  settings = {
  	Lua = {
    	runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = "LuaJIT",
        path = vim.split(package.path, ";"),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { "vim" },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files and plugins
        library = { vim.env.VIMRUNTIME },
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").clangd.setup {}
-- Launch Cabal files aswell
require("lspconfig").hls.setup {
  filetypes = { 'haskell', 'lhaskell', 'cabal' }
}
require("lspconfig").matlab_ls.setup {}
require("lspconfig").texlab.setup {}
require("lspconfig").bashls.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").marksman.setup {}
