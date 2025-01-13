-- lua/plugins/catppuccin.lua
local ret =  {
{
  "catppuccin/nvim", 
	name = "catppuccin",
  priority = 9999,
  config = function()
		vim.cmd("colorscheme catppuccin")
	end 

}
  , {
    "rose-pine/neovim", 
	name = "rose-pine",
  },
  {  	"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000
}

}


return {
ret,
  {
		"xiyaowong/nvim-transparent",
		lazy = false,
		priority = 99999,
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local palette = require("nightfox.palette").load("nightfox")
			require("nightfox").setup({
				options = { transparent = true },
				groups = {
					all = {
						TelescopeBorder = { fg = palette.fg3 },
					},
					nightfox = {
						Visual = { bg = palette.bg1 },
					},
				},
			})
			-- vim.cmd.colorscheme("nightfox")
		end,
	},
}
