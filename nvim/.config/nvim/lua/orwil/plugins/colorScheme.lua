return {
	{ 
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function() 
			vim.cmd.colorscheme "catppuccin-nvim"
            vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#585b70", bold = true })
        end
	},
	{
		"xiyaowong/transparent.nvim",
		lazy = false, --this was SUPER IMPORTANT
		config = function()
			local tr = require("transparent")
            tr.setup({ -- Optional, you don't have to run setup.
				groups = {           -- table: default groups
					"Normal",
					"NormalNC",
					"Comment",
					"Constant",
					"Special",
					"Identifier",
					"Statement",
					"PreProc",
					"Type",
					"Underlined",
					"Todo",
					"String",
					"Function",
					"Conditional",
					"Repeat",
					"Operator",
					"Structure",
					"LineNr",
					"NonText",
					"SignColumn",
					"CursorLine",
					"CursorLineNr",
					"StatusLine",
					"StatusLineNC",
					"EndOfBuffer",
				},
				extra_groups = {
					"NvimTreeNormal", -- NvimTree

				},
                exclude_groups = {
                },
			})
		end,
	}
}
