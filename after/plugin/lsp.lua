local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

--  on_attach = function(client, bufnr)
--    vim.api.nvim_create_autocmd("BufWritePre", {
--      buffer = bufnr,
--      command = "EslintFixAll",
--    })
--  end,

--lsp.format_on_save({
--  format_opts = {
--    async = false,
--    timeout_ms = 10000,
--  },
--  servers = {
--    ['prettier'] = {'javascript', 'typescript', 'typescriptreact', 'javascriptreact'},
--  }
--})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<Enter>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

--vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
--vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover)
--vim.keymap.set('n', '<leader>c', vim.lsp.buf.format)

vim.lsp.set_log_level("debug")

lsp.setup()
