function Mapear(mode, key, action)
    vim.api.nvim_set_keymap(mode, key, action, {
        noremap = true,
        silent = true
    })
end

Mapear('n', '<F1>', ':NvimTreeToggle<cr>')
Mapear('n', '<F2>', ':bprevious!<cr>')
Mapear('n', '<F3>', ':bnext!<cr>')
Mapear('n', '<F4>', ':bdelete!<cr>')
Mapear('n', '<F5>', ':Telescope find_files<cr>')
Mapear('n', '<F8>', ':Telescope live_grep<cr>')

Mapear('i', '<C-h>', '<Left>')
Mapear('i', '<C-j>', '<Down>')
Mapear('i', '<C-k>', '<Up>')
Mapear('i', '<C-l>', '<Right>')

Mapear('i', '<Left>', '<Nop>')
Mapear('i', '<Right>', '<Nop>')
Mapear('i', '<Up>', '<Nop>')
Mapear('i', '<Down>', '<Nop>')
Mapear('i', '<PageUp>', '<Nop>')
Mapear('i', '<PageDown>', '<Nop>')
