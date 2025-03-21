return {
  {
    "hrsh7th/nvim-cmp",
    opts = {
      formatting = {
        format = function(entry, vim_item)
          local highlights_info = require("colorful-menu").cmp_highlights(entry)

          -- highlight_info is nil means we are missing the ts parser, it's
          -- better to fallback to use default `vim_item.abbr`. What this plugin
          -- offers is two fields: `vim_item.abbr_hl_group` and `vim_item.abbr`.
          if highlights_info ~= nil then
            vim_item.abbr_hl_group = highlights_info.highlights
            vim_item.abbr = highlights_info.text
          end

          return vim_item
        end,
      },
    },
  },
}
