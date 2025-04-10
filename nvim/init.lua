-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.termguicolors = true
vim.cmd [[
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight MsgArea guibg=NONE ctermbg=NONE
  highlight FloatBorder guibg=NONE ctermbg=NONE
  highlight WinSeparator guibg=NONE ctermbg=NONE
]]
require("catppuccin").setup({
    transparent_background = true,
    integrations = {
        nvimtree = {
            enabled = true,
            show_root = true,
            transparent_panel = true,
        },
        telescope = {
            enabled = true,
            transparent_panel = true,
        },
        which_key = true,
    },
})
vim.cmd.colorscheme("catppuccin")
