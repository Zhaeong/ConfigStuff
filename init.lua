print("Loaded Owen Config")

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})

--Ctrl-p
vim.keymap.set('n', '<C-p>', builtin.git_files, {})


require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "cpp", "c", "lua" },

    highlight = {
      enable = true,
  
      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    },
  }
