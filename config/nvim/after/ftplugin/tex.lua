vim.keymap.set('n', '<leader>v',  
function()
    local filepath = vim.fn.expand('%:r') .. ".pdf"
    vim.api.nvim_command("silent ! termux-open " .. filepath)
end
)
