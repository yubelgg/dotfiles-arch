return {
	"psf/black",
	ft = "python",
	config = function()
		local group = vim.api.nvim_create_augroup("Black", { clear = true })
		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			pattern = "*.py",
			command = "silent !black %",
			group = group,
		})
	end,
}
