-- Configures 42header from lazy.nvim opts:
--
--   { "rscircus/42header", main = "42header",
--     opts = { user = "...", mail = "...", art = "43" | "cow" } }
--
-- user/mail land in g:user42 / g:mail42, art in g:header_art.
-- Globals set elsewhere still work; setup() wins when both exist.
local M = {}

function M.setup(opts)
	opts = opts or {}
	if opts.user ~= nil then
		vim.g.user42 = opts.user
	end
	if opts.mail ~= nil then
		vim.g.mail42 = opts.mail
	end
	if opts.art ~= nil then
		if opts.art ~= "43" and opts.art ~= "cow" then
			error(("42header: unknown art '%s' (expected '43' or 'cow')"):format(opts.art))
		end
		vim.g.header_art = opts.art
	end
end

return M
