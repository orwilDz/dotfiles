-- === Affichage ===
vim.opt.number = true          -- Affiche les numéros de ligne absolus
vim.opt.relativenumber = true  -- Affiche les numéros de ligne relatifs

-- === Indentation et Tabs ===
vim.opt.tabstop = 4            -- Une tabulation visuelle = 4 espaces
vim.opt.shiftwidth = 4         -- Indentation automatique = 4 espaces
vim.opt.expandtab = true       -- Convertit les tabs en espaces
vim.opt.softtabstop = 4        -- La touche Tab/Backspace gère 4 espaces
vim.opt.smartindent = true     -- Indentation intelligente (nouvelle ligne)

-- === Divers (Optionnel mais recommandé) ===
vim.opt.termguicolors = true   -- Active les vraies couleurs dans le terminal
