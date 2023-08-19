local highlights = require("custom.highlights")
local M = {
  ui = {
    theme = "onedark",
    theme_toggle = {
      "onedark",
      "one_light"
    },
    hl_override = highlights.override,
    hl_add = highlights.add
  },
  plugins = "custom.plugins",
  mappings = require("custom.mappings")
}
return M
