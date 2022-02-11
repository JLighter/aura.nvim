local hsl = require("lush.hsl")

local  dark          = hsl("#21202d")
local  white         = hsl("#edecee")
local  gray          = hsl("#6d6d6d")
local  purple        = hsl("#a277ff")
local  purple_faded  = hsl("#3d375e")
local  green         = hsl("#61ffca")
local  orange        = hsl("#ffca85")
local  pink          = hsl("#f694ff")
local  blue          = hsl("#82e2ff")
local  red           = hsl("#ff6767")

-- aura palette
return {
  dark          = dark,
  white         = white,
  gray          = gray,
  purple        = purple,
  purple_faded  = purple_faded,
  green         = green,
  orange        = orange,
  pink          = pink,
  blue          = blue,
  red           = red,

  background = dark,
  foreground = white,
  muted      = gray,
  selection  = purple_faded,
  primary    = purple,
  secondary  = green,
  tertiary   = orange,
  quaternary = pink,
  quinary    = blue,
  senary     = red,
}
