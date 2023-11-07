local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ps', builtin.grep_string, {})
vim.keymap.set('n', '<leader>phs', builtin.search_history, {})
vim.keymap.set('n', '<leader>/', function()
	builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
		windblend = 10,
		previewer = false,
	})
end, { desc = '[/] Fuzzily search in current buffer' })


require('telescope').setup {
	defaults = {
		path_display = { 'truncate' },
	},

	-- Open a file in vertical split from telescope 
	pickers = {
		lsp_references = {
			fname_width = 100,
			path_display = { 'truncate' },
		},
		find_files = {
			mappings = {
				n = {
					['<C-s>'] = require('telescope.actions').file_vsplit,
				},
				i = {
					['<C-s>'] = require('telescope.actions').file_vsplit,
				},
			},
		},
		live_grep = {
			mappings = {
				n = {
					['<C-s>'] = require('telescope.actions').file_vsplit,
				},
				i = {
					['<C-s>'] = require('telescope.actions').file_vsplit,
				},
			},
		},
		buffers = {
			mappings = {
				n = {
					['<C-s>'] = require('telescope.actions').file_vsplit,
				},
				i = {
					['<C-s>'] = require('telescope.actions').file_vsplit,
				},
			},
		},
	}
}

