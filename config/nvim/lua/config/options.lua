-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--
-- Inside your init.lua lazy setup block:

-- Your other plugins..
--
return {
  {
    "AvengeMedia/base46",
    lazy = false, -- Disable lazy loading so it loads on startup
    priority = 1000, -- Load this before any other plugin
    config = function()
      -- 1. Run the plugin setup
      require("base46").setup({
        transparency = true,
        set_background = false,
        term_colors = true,
      })

      -- 2. Permanently set your colorscheme
      vim.cmd.colorscheme("dms")
    end,
  },

  -- Your other plugins...
}
