vim.keymap.set('n', '<leader>n', function() vim.cmd('CHADopen') end)

local chadtree_settings = {
    view = {
        window_options = {
            number = true,
            relativenumber = true
        }
    }
}
vim.api.nvim_set_var("chadtree_settings", chadtree_settings)
