return {
	-- "rose-pine/neovim",
	"rebelot/kanagawa.nvim",
	priority = 1000,
	opts = ...,
	config = function()
		-- vim.cmd.colorscheme("rose-pine")
		-- require("rose-pine").setup({
		-- 	disable_background = true,
		-- 	styles = {
		-- 		italic = false,
		-- 	},
		-- })
		vim.cmd.colorscheme("kanagawa")

		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end,
}
