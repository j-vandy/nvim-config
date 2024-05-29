-- LSP (language server for intellisense)
return {
  {
    -- mason (LSP package manager)
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    -- mason lsp config (ensures lsp servers are installed)
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd" }
      })
    end
  },
  {
    -- nvim lsp config (communicates between nvim and lsp)
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
