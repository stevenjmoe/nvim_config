require('mason').setup()
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})

	-- Function to quickly map keys
	local nmap = function(keys, func, desc)
		if desc then
			desc = 'LSP: ' .. desc
		end

		vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
	end

	nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
	nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
	nmap('<leader>gd', vim.lsp.buf.definition, '[G]oto [D]eclaration')

	nmap('<leader>gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
	nmap('<leader>gi', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
	nmap('<leader>d', vim.lsp.buf.type_definition, 'Type [D]efinition')
	nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
	nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

	nmap('K', vim.lsp.buf.hover, '[H]over')
	nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature help')

	nmap('<leader>fd', vim.lsp.buf.format, '[F]ormat [D]ocument')

end)

lsp.ensure_installed({
	'tsserver',
	'eslint', 
	'lua_ls',
	'pylsp',
	'sqlls',
	'svelte',
	'tailwindcss',
})

lsp.setup()
