--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', [[<ESC>]], {})

-- Toggle nvim-tree
map('n', '<leader>n', [[:NvimTreeToggle<CR>]], {})

-- Nivigate git repo
map('n', '<leader>g', [[:Git<CR>]], {})

-- Toggle floatting term
map('n', '<leader>t', [[:FloatermToggle<CR>]], {})

-- 
map('n', '<leader>s', [[:BLines<CR>]], {})

map('n', '<leader>l', [[:IndentLinesToggle<CR>]], {})

