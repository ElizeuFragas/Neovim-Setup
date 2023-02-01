require("mason").setup()
require("mason-lspconfig").setup({ 
	ensure_installed = { "sumneko_lua", "jdtls" },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- After setting up mason-lspconfig you may set up servers via lspconfig
require("lspconfig").jdtls.setup {
   capabilities = capabilities, 
	on_attach = on_attach,
}
require("lspconfig").sumneko_lua.setup {

   capabilities = capabilities, 
	on_attach = on_attach
}
-- require("lspconfig").rust_analyzer.setup {}
-- ...
