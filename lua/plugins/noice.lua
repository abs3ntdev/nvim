return {
  {
    "folke/noice.nvim",
    opts = {
      routes = {
        {
          filter = {
            event = "msg_show",
            kind = "",
            any = {
              { find = "written" },
              { find = "more lines" },
              { find = "fewer lines" },
              { find = "more line" },
              { find = "line less" },
              { find = "lines >ed" },
              { find = "lines <ed" },
              { find = "lines yanked" },
              { find = "%d changes" },
              { find = "%d change" },
            },
          },
          opts = { skip = true },
        },
      },
    },
  },
}
