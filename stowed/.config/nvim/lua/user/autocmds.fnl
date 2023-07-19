(when vim.g.neovide (set vim.g.neovide_transparency 0.95)
  (set vim.g.neovide_input_macos_alt_is_meta true)
  (vim.cmd "set guifont=MonoLisa,Symbols\\ Nerd\\ Font")
  (set vim.g.neovide_cursor_vfx_mode :railgun)
  (set vim.g.transparency 0.95))
(vim.api.nvim_create_autocmd :FileType
                             {:callback (fn [] (set vim.opt_local.wrap true)
                                          (set vim.opt_local.spell true))
                              :pattern [:gitcommit :markdown]})
