
require('lspconfig').lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      workspace = {
        library = "/home/vos/.config/Code/User/globalStorage/sumneko.lua/addonManager/addons/umbrella/module/library",
      } ,
    }
  }
}

local ks = require('lspconfig')
for i, v in ipairs(ks) do
  print(i,v)
end
