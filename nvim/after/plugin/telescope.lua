pcall(require('telescope').load_extension, 'fzf')
local builtin = require('telescope.builtin')
local setMap = vim.keymap.set

setMap('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })


setMap('n', '<leader><Space>', builtin.buffers, { desc = '[ ] Open Existing buffers'})
setMap('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find Recently opened files' })

setMap('n', '<leader>sf', builtin.find_files, { desc="[S]earch local [F]iles" })
setMap('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch [W]ord'})
setMap('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp'})
setMap('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep'})
setMap('n', '<leader>sc', builtin.command_history, { desc = '[S]earch latest [C]ommands '})
setMap('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics'})

setMap('n', '<leader>gf', builtin.git_files, { desc = '[f] Find git files'})

local telescope = require('telescope')
telescope.load_extension("emoji")

telescope.setup {
  extension = {
    emoji = {
      action = function(emoji)
        vim.fn.setreg("*", emoji.value)
        print([[Press p or "*p to paste emoji]] .. emoji.value)

        vim.api.nvim_put({emoji.value}, 'c', false, true)
      end,
    }
  }
  
}
