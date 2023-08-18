
highlights = require "custom.highlights"

M =
  ui:
    theme: "onedark"
    theme_toggle: {"onedark", "one_light"}
    hl_override: highlights.override
    hl_add: highlights.add

  plugins: "custom.plugins"
  mappings: require "custom.mappings"

M


