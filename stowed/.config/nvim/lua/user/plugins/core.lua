-- [nfnl] Compiled from plugins/core.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("user.util")
local utils = uu.autoload("astronvim.utils")
local lspconfig = uu.autoload("lspconfig")
local function _1_(_, opts)
  opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, {"fennel_language_server"})
  local function _2_()
    return lspconfig.lua_ls.setup({settings = {Lua = {diagnostics = {globals = {"vim"}}}}})
  end
  opts.handlers.lua_ls = _2_
  local function _3_()
    return lspconfig.fennel_language_server.setup({filetypes = {"fennel"}, root_dir = lspconfig.util.root_pattern("fnl", "lua"), single_file_support = true, settings = {fennel = {diagnostics = {globals = {"vim", "jit", "comment"}}, workspace = {library = vim.api.nvim_list_runtime_paths()}}}})
  end
  opts.handlers.fennel_language_server = _3_
  return opts
end
local function _4_(_, opts)
  opts.ensure_installed = (require("astronvim.utils")).list_insert_unique(opts.ensure_installed, {"clojure", "fennel"})
  return nil
end
local function _5_(_, config)
  config.sources = {}
  return config
end
local function _6_(_, opts)
  opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, {})
  return opts
end
local function _7_(_, opts)
  opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, {})
  return opts
end
return {uu.tx("williamboman/mason-lspconfig.nvim", {opts = _1_}), uu.tx("nvim-treesitter/nvim-treesitter", {opts = _4_}), uu.tx("jose-elias-alvarez/null-ls.nvim", {opts = _5_}), uu.tx("rcarriga/nvim-notify", {opts = {render = "compact", stages = "static"}}), uu.tx("nvim-neo-tree/neo-tree.nvim", {opts = {filesystem = {filtered_items = {hide_by_pattern = {"/home/*/.config/nvim/lua/user/**.lua"}}, cwd_target = {current = "none"}}}}), uu.tx("jay-babu/mason-null-ls.nvim", {opts = _6_}), uu.tx("jay-babu/mason-nvim-dap.nvim", {opts = _7_}), uu.tx("better-escape.nvim", {enabled = false}), uu.tx("nvim-autopairs", {enabled = false}), uu.tx("mason.nvim", {opts = {PATH = "append"}}), uu.tx("which-key.nvim", {opts = {window = {winblend = 10}}}), uu.tx("NMAC427/guess-indent.nvim", {opts = {filetype_exclude = {"clojure", "fennel"}}}), uu.tx("NvChad/nvim-colorizer.lua", {opts = {filetypes = {["*"] = {cmp_docs = {always_update = true}, cmp_menu = {always_update = true}}}}, user_default_options = {mode = "virtualtext", tailwind = true}})}
