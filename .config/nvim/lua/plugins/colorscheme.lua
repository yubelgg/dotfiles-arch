return {
	"rose-pine/neovim",
	-- "morhetz/gruvbox",
	priority = 1000,
	opts = ...,
	config = function()
		-- vim.cmd.colorscheme("gruvbox")
		vim.cmd.colorscheme("rose-pine")
	end,
}
