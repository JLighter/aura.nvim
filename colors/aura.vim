" reloading all gruvbox highlights
lua package.loaded["aura"] = nil
lua package.loaded["aura.base"] = nil
lua package.loaded["aura.plugins.highlights"] = nil
lua package.loaded["aura.languages"] = nil
lua require("lush")(require("aura"))
