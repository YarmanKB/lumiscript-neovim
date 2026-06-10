vim.api.nvim_create_autocmd("User", {
	pattern = "TSUpdate",
	callback = function()
		local ok, parsers = pcall(require, "nvim-treesitter.parsers")
		if not ok then
			return
		end
		parsers.lumiscript = {
			install_info = {
				url = "https://github.com/YarmanKB/lumiscript-treesitter",
			},
		}
	end,
})
