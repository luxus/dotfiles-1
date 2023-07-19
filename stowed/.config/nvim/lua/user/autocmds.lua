-- [nfnl] Compiled from autocmds.fnl by https://github.com/Olical/nfnl, do not edit.
if vim.g.neovide then
  vim.g.neovide_transparency = 0.95
  vim.g.neovide_input_macos_alt_is_meta = true
  vim.cmd("set guifont=MonoLisa,Symbols\\ Nerd\\ Font")
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.transparency = 0.95
else
end
local function _2_()
  vim.opt_local.wrap = true
  vim.opt_local.spell = true
  return nil
end
return vim.api.nvim_create_autocmd("FileType", {callback = _2_, pattern = {"gitcommit", "markdown"}})
