-- Configures 42header from lazy.nvim opts:
--
--   { "rscircus/42header", main = "42header", opts = { user = "...", mail = "..." } }
--
-- Values land in g:user42 / g:mail42, which plugin/stdheader.vim reads.
-- g:user42 / g:mail42 set elsewhere still work; setup() wins when both exist.
local M = {}

function M.setup(opts)
	opts = opts or {}
	if opts.user ~= nil then
		vim.g.user42 = opts.user
	end
	if opts.mail ~= nil then
		vim.g.mail42 = opts.mail
	end
end

return M
