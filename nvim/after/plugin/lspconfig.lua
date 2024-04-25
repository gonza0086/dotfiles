local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local keymap = vim.keymap
local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", opts)
  keymap.set("n", "<leader>gj", vim.diagnostic.goto_next, opts)
  keymap.set("n", "<leader>gk", vim.diagnostic.goto_prev, opts)
  keymap.set("n", "<leader>td", "<cmd>Telescope diagnostics<cr>", opts)
  keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)
  keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
end


local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- configure html server
lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- configure css server
lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- configure tss server
lspconfig['tsserver'].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

-- rust
lspconfig['rust_analyzer'].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

-- python
lspconfig['pyright'].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})
