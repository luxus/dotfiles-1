-- [nfnl] Compiled from plugins/luxus.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("user.util")
local function _1_()
  vim.g.sexp_filetypes = "clojure,scheme,lisp,timl,fennel,janet"
  return nil
end
return {{import = "astrocommunity.motion.mini-ai"}, {import = "astrocommunity.motion.portal-nvim"}, {import = "astrocommunity.editing-support.mini-splitjoin"}, {import = "astrocommunity.pack.svelte"}, {import = "astrocommunity.pack.nix"}, {import = "astrocommunity.color.headlines-nvim"}, uu.tx("astrotheme", {opts = {style = {inactive = true, transparency = false}}}), uu.tx("mbbill/undotree", {keys = {uu.tx("<leader>z", ":UndotreeShow<cr>:UndotreeFocus<cr>", {desc = "Open Undotree"})}}), uu.tx("Olical/aniseed"), uu.tx("Olical/nvim-local-fennel"), uu.tx("Olical/nfnl", {ft = {"fennel"}, config = true}), uu.tx("nvim-lua/plenary.nvim"), uu.tx("bakpakin/fennel.vim"), uu.tx("guns/vim-sexp", {init = _1_}), uu.tx("tpope/vim-sexp-mappings-for-regular-people")}
