local bufferline = require('bufferline')
bufferline.setup {
    options = {
        numbers = 'ordinal',
        separator_style = 'thin',
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or ""
            return icon .. " " .. count
        end
    }
}

vim.keymap.set("n", "gb", function() vim.cmd(":BufferLinePick") end)
vim.keymap.set("n", "gD", function() vim.cmd(":BufferLinePickClose") end)

vim.keymap.set("n", "gdR", function() vim.cmd(":BufferLineCloseRight") end)
vim.keymap.set("n", "gdL", function() vim.cmd(":BufferLineCloseLeft") end)

vim.keymap.set("n", "gO", function() vim.cmd(":%bd|e#") end);

vim.keymap.set("n", "<leader>1", function() require("bufferline").go_to(1, true) end)
vim.keymap.set("n", "<leader>2", function() require("bufferline").go_to(2, true) end)
vim.keymap.set("n", "<leader>3", function() require("bufferline").go_to(3, true) end)
vim.keymap.set("n", "<leader>4", function() require("bufferline").go_to(4, true) end)
vim.keymap.set("n", "<leader>5", function() require("bufferline").go_to(5, true) end)
vim.keymap.set("n", "<leader>6", function() require("bufferline").go_to(6, true) end)
vim.keymap.set("n", "<leader>7", function() require("bufferline").go_to(7, true) end)
vim.keymap.set("n", "<leader>8", function() require("bufferline").go_to(8, true) end)
vim.keymap.set("n", "<leader>9", function() require("bufferline").go_to(9, true) end)
vim.keymap.set("n", "<leader>$", function() require("bufferline").go_to(-1, true) end)
