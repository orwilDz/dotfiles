local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Navigation between window <h-j-k-l>
keymap('n', '<C-h>', '<C-w>h', { desc = "Aller à la window de gauche" })
keymap('n', '<C-l>', '<C-w>l', { desc = "Aller à la window de droite" })
keymap('n', '<C-j>', '<C-w>j', { desc = "Aller à la window du bas" })
keymap('n', '<C-k>', '<C-w>k', { desc = "Aller à la window du haut" })

-- Nvim Tree
keymap("n" , "<leader>pv", vim.cmd.NvimTreeOpen)
keymap("n" , "<leader>pc", vim.cmd.NvimTreeClose)
keymap("n" , "<leader>e", vim.cmd.NvimTreeToggle)

-- BufferLine
keymap('n', '<leader>bo', '<Cmd>BufferLineCloseOthers<CR>', { desc = "Close other buffers" })
keymap('n', '<leader>br', '<Cmd>BufferLineCloseRight<CR>', { desc = "Close buffers to the right" })
keymap('n', '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>', { desc = "Close buffers to the left" })
keymap('n', '<leader>bp', '<cmd>BufferLinePick<CR>', { desc = "Close current buffer" })
keymap('n', '<leader>bc', '<cmd>BufferLinePickClose<CR>', { desc = "Close current buffer" })

keymap('n', '<S-h>', '<Cmd>BufferLineCyclePrev<CR>', opts)
keymap('n', '<S-l>', '<Cmd>BufferLineCycleNext<CR>', opts)
keymap('n', '<leader>bn', '<Cmd>BufferLineCycleNext<CR>', { desc = "Next buffer" })
keymap('n', '<leader>bb', '<Cmd>BufferLineCyclePrev<CR>', { desc = "Previous buffer" })

-- Telescope
keymap('n', '<leader>pf', '<cmd>Telescope find_files<cr>', { desc = 'Find files' })
keymap('n', '<C-p>', '<cmd>Telescope git_files<cr>', { desc = 'Find git files' })
keymap('n', '<leader>ps', '<cmd>Telescope live_grep<cr>', { desc = 'Live grep' })

-- Lsp's
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf, silent = true }

    -- set keybinds
    opts.desc = "Show LSP references"
    keymap("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

    opts.desc = "Go to declaration"
    keymap("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

    opts.desc = "Show LSP definition"
    keymap("n", "gd", vim.lsp.buf.definition, opts) -- show lsp definition

    opts.desc = "Show LSP implementations"
    keymap("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

    opts.desc = "Show LSP type definitions"
    keymap("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

    opts.desc = "See available code actions"
    keymap({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

    opts.desc = "Smart rename"
    keymap("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

    opts.desc = "Show buffer diagnostics"
    keymap("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

    opts.desc = "Show line diagnostics"
    keymap("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

    opts.desc = "Go to previous diagnostic"
    keymap("n", "[d", function()
      vim.diagnostic.jump({ count = -1, float = true })
    end, opts) -- jump to previous diagnostic in buffer
    --
    opts.desc = "Go to next diagnostic"
    keymap("n", "]d", function()
      vim.diagnostic.jump({ count = 1, float = true })
    end, opts) -- jump to next diagnostic in buffer

    opts.desc = "Show documentation for what is under cursor"
    keymap("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

    opts.desc = "Restart LSP"
    keymap("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
  end,
})
