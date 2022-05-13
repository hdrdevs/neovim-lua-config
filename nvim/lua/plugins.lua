vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

    -- Packer can manage itself
    use {'wbthomason/packer.nvim'}

    use {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
        'hdrdevs/vim-javascript',
        'glepnir/dashboard-nvim',
        'windwp/nvim-autopairs',
        'ahmedkhalf/project.nvim',
        'lukas-reineke/indent-blankline.nvim',
    }
    
    use 'hrsh7th/nvim-compe'
    
    use {
		'numToStr/Comment.nvim',
		config = function()
		    require('Comment').setup()
		end
	}
	



    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

	use {
	  'romgrk/barbar.nvim',
	  requires = {'kyazdani42/nvim-web-devicons'}
	}

    use 'navarasu/onedark.nvim'

end)
