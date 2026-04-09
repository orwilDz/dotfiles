return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent_background = true, -- 🔥 important
            })

            vim.cmd.colorscheme("catppuccin")

            -- ⚡ DELAY pour override tous les plugins
            vim.schedule(function()
                -- GLOBAL
                vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
                vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

                -- NVIM TREE
                vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
                vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
                vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none" })
                vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { bg = "none" })
                vim.api.nvim_set_hl(0, "NvimTreeStatusLine", { bg = "none" })
                vim.api.nvim_set_hl(0, "NvimTreeStatusLineNC", { bg = "none" })
                vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { bg = "none" })

                -- BUFFERLINE 🔥 (le vrai fix est là)
                vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "none" })
                vim.api.nvim_set_hl(0, "BufferLineBackground", { bg = "none" })
                vim.api.nvim_set_hl(0, "BufferLineTab", { bg = "none" })
                vim.api.nvim_set_hl(0, "BufferLineTabSelected", { bg = "none" })
            end)
        end,
    },

    {
        "xiyaowong/transparent.nvim",
        lazy = false,
        config = function()
            require("transparent").setup({
                extra_groups = {
                    "NvimTreeNormal",
                    "NvimTreeNormalNC",
                    "NvimTreeEndOfBuffer",
                    "BufferLineFill",
                    "BufferLineBackground",
                },
            })
        end,
    },
}
