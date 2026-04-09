return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        local bufferline = require('bufferline')
        bufferline.setup({
            options = {
                mode = "buffers",
                style_preset =  bufferline.style_preset.default,
                themable = true,

                numbers = "ordinal",
                indicator = {
                    icon = '▎',
                    style = 'icon',
                },
                diagnostics = false, -- ou "nvim_lsp" | "coc"
                diagnostics_update_in_insert = false,
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local icon = level:match("error") and " " or " "
                    return " " .. icon .. count
                end,

                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left",
                        separator = true
                    }
                },
            }
        })
     end
}

