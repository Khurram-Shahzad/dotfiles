return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function ()
		vim.opt.termguicolors = true
		vim.opt.showtabline = 2
		vim.opt.hidden = true
	end
}
