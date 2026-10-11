# Changelog

## [2026.10.11.1823] - 357affe
- New `art` option: `"43"` (default) or `"cow"`; set via lazy `opts` or `g:header_art`.
- Unknown `art` values raise an error in `setup()`.
- README documents the flag.

## [2026.10.11.1815] - 66da76f
- Header ascii art now reads 43 (4 kept, 2 replaced by a 3 in the same glyph style).
- New `lua/42header.lua` with `setup({ user, mail })` for lazy.nvim `opts`; writes `g:user42` / `g:mail42`.
- README documents the fork changes.
