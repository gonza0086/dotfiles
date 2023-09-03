local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	-- packer
	use("wbthomason/packer.nvim")

	-- themes
    use('navarasu/onedark.nvim') -- onedark
    use ('Mofiqul/dracula.nvim') -- dracula
    use({ 'rose-pine/neovim', as = 'rose-pine' }) -- rose pine
    use { "catppuccin/nvim", as = "catppuccin" } -- catppuccin
    use ("EdenEast/nightfox.nvim") -- nightfox
    use "rebelot/kanagawa.nvim" -- kanagawa
    use('norcalli/nvim-colorizer.lua') -- colorizer

	-- plugins dependencies
	use("nvim-lua/plenary.nvim")

	-- essential
	use("numToStr/Comment.nvim") -- comments [gc]
	use("vim-scripts/ReplaceWithRegister") -- replace w/clipboard [gr]
	use("nvim-tree/nvim-tree.lua") -- file tree [nt]
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- fuzzy finding performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finding

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths

    -- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	-- use("rafamadriz/friendly-snippets") -- useful snippets

	-- lsp
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	-- use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- buffertab
	use("akinsho/bufferline.nvim")

	-- auto closing
	use("windwp/nvim-autopairs")
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })

	-- style
	use("kyazdani42/nvim-web-devicons") -- icons
	use("nvim-lualine/lualine.nvim") -- statusline
	use("lukas-reineke/indent-blankline.nvim") -- indentlines

	if packer_bootstrap then
		require("packer").sync()
	end
end)
