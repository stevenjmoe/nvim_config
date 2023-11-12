--require'nvim-treesitter.install'.compiler = 'C:\\Users\\smoe\\AppData\\Local\\Programs\\zig-windows-x86_64-0.11.0\\zig-windows-x86_64-0.11.0\\zig.exe'

vim.filetype.add({ extension = { wgsl = "wgsl" } })

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.wgsl = {
	install_info = {
		url = "https://github.com/szebniok/tree-sitter-wgsl",
		files = { "src/parser.c" }
	},
}

require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "css", "diff", "http", "javascript",
		"json", "lua", "markdown", "python", "regex", "rust",
		"scss", "sql", "toml", "tsx", "typescript", "xml", "wgsl"
	},

	sync_install = false,
	auto_install = false,

	highlight = {
		enable = true,
	},

	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
}
