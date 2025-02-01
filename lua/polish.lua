local mocha = require("catppuccin.palettes").get_palette "mocha"

local highlight = {
  "RainbowRed",
  "RainbowYellow",
  "RainbowBlue",
  "RainbowOrange",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowCyan",
}
local hooks = require "ibl.hooks"
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = mocha.red })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = mocha.yellow })
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = mocha.blue })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = mocha.peach })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = mocha.green })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = mocha.mauve })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = mocha.teal })
end)

vim.g.rainbow_delimiters = { highlight = highlight }
require("ibl").setup { scope = { highlight = highlight } }

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
