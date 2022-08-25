vim.opt.termguicolors = true
vim.g.aurora_italic = 1
vim.g.aurora_transparent = 1
vim.g.aurora_bold = 1

-- starry stuffs. vim.g.starry_italic_comments = true vim.g.starry_italic_comments = true
vim.g.starry_italic_string = true
vim.g.starry_italic_keywords = true
vim.g.starry_italic_functions = true
vim.g.starry_italic_variables = true
vim.g.starry_contrast = false
vim.g.starry_borders = true

-- set to true to disable background and allow transparent background
vim.g.starry_disable_background = true

-- disable random loading
vim.g.starry_style_fix=true

-- load moonlight everytime or
vim.g.starry_style="moonlight"

-- darker background
vim.g.starry_darker_contrast=true

-- OLED deep black
vim.g.starry_deep_black=true

-- Note: enable for nvim 0.6+, it is faster (loading time down to 4~6s from 7~11s), but it does
vim.g.starry_set_hl=true

--  this allow using brighter color
vim.g.starry_daylight_switch=false

-- other themes: dracula, oceanic, dracula_blood, 'deep ocean', darker, palenight, monokai, mariana, emerald, middlenight_blue



vim.cmd("colorscheme aurora")

require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}
