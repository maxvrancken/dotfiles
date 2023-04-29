local qn = require('quicknote')

vim.keymap.set('n', '<leader>qnn', function() qn.NewNoteAtCurrentLine() end)
vim.keymap.set('n', '<leader>qno', function() qn.OpenNoteAtCurrentLine() end)
vim.keymap.set('n', '<leader>qnd', function() qn.DeleteNoteAtCurrentLine() end)
vim.keymap.set('n', '<leader>qns', function() qn.ShowNoteSigns() end)
vim.keymap.set('n', '<leader>qnh', function() qn.HideNoteSigns() end)
