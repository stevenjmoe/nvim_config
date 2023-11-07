--require'nvim-treesitter.install'.compiler = 'C:\\Users\\smoe\\AppData\\Local\\Programs\\zig-windows-x86_64-0.11.0\\zig-windows-x86_64-0.11.0\\zig.exe'

require'nvim-treesitter.configs'.setup {
	ensure_installed = { "css", "diff", "http", "javascript", 
		"json", "lua", "markdown", "python", "regex", "rust",
		"scss", "sql", "toml", "tsx", "typescript", "xml"
	},

	sync_install = false,
	auto_install = false,

	highlight = {
		enable = true,
	}
}
