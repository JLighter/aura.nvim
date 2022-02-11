local lush = require("lush")
local base = require("aura.base")
local plugins = require("aura.plugins.highlights")
local languages = require("aura.languages")

local specs = { base, languages, plugins }
local spec = lush.merge(specs)

-- checking if user has lightline and adding support
-- require("aura.plugins.lightline").init(spec)

return spec
