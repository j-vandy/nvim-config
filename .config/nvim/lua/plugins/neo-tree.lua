-- neo-tree (solution explorer/format package manager)
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- vim.keymap.set('n', '<C-A-l>', ':Neotree filesystem reveal left<CR>')
    vim.keymap.set('n', '<C-A-l>', ':Neotree toggle last<CR>')
  end
}

