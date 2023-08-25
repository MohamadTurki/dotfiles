-- ~/.config/nvim/init.lua

-- ...

-- Use Tectonic as the LaTeX compiler

vim.g.vimtex_compiler_method = 'tectonic'
vim.g.vimtex_tectonic_executable = 'tectonic'
vim.g.vimtex_syntax_enabled = 0
-- Tectonic output directory
vim.g.vimtex_compiler_tectonic = {
    executable = 'tectonic',
}
