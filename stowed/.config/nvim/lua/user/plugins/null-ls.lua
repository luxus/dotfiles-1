-- [nfnl] Compiled from plugins/null-ls.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("user.util")
local function _1_(_, config)
  config.sources = {}
  return config
end
return uu.tx("jose-elias-alvarez/null-ls.nvim", {opts = _1_})
