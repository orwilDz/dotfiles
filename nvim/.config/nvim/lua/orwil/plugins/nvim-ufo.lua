return {
  "kevinhwang91/nvim-ufo",
  dependencies = "kevinhwang91/promise-async",
  init = function()
    vim.o.foldcolumn = "1"      -- Affiche la colonne de folding
    vim.o.foldlevel = 99        -- Ouvre tout par défaut
    vim.o.foldlevelstart = 99   -- Même chose à l'ouverture du fichier
    vim.o.foldenable = true
  end,
  opts = {
    provider_selector = function(bufnr, filetype, buftype)
      -- Priorise Tree-sitter, fallback sur l'indentation
      return { "treesitter", "indent" }
    end
  }
}
