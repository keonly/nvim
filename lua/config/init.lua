local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("config.globals")
require("config.options")
require("config.keymaps")

local opts = {
    defaults = {
	    lazy = true,
    },
    rtp = {
        disabled_plugins = {
            "netrw",
            "netrwPlugin",
        },
    },
    change_detection = {
	    notify = true,
    },
}

require("lazy").setup("plugins", opts)
vim.cmd.colorscheme "catppuccin"
vim.opt.showmode = false

-- For image.nvim
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"
