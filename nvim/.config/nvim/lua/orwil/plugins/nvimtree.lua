return {
	{"nvim-tree/nvim-tree.lua",config = function () 
		-- disable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup({
            renderer = {
                highlight_git = true,
                indent_markers = {
                    enable = false,
                },
            },
            
            view = {
                -- Largeur de la sidebar
                width = 30,
                
                -- Pour la ligne de séparation
                signcolumn = "yes",
            },
		})
	end},
	{"nvim-tree/nvim-web-devicons"},
}
