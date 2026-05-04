local ok, parsers = pcall(require, "nvim-treesitter.parsers")
if not ok then
  return
end

local parser_url = vim.g.lumiscript_treesitter_url
  or vim.g.lumiscript_treesitter_path
  or "https://github.com/YarmanKB/lumiscript-treesitter"

parsers.get_parser_configs().lumiscript = {
  install_info = {
    url = parser_url,
    files = { "src/parser.c" },
  },
  filetype = "lumiscript",
}
