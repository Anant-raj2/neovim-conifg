return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    flavor = "mocha",

    config = function()
      require("catppuccin").setup({
        "catppuccin/nvim",
        name = "catppuccin",
        opts = {
          term_colors = true,
          transparent_background = false,
          styles = {
            comments = {},
            conditionals = {},
            loops = {},
            functions = {},
            keywords = {},
            strings = {},
            variables = {},
            numbers = {},
            booleans = {},
            properties = {},
            types = {},
          },
          color_overrides = {
            mocha = {
              base = "#000000",
              mantle = "#000000",
              crust = "#000000",
            },
          },
          integrations = {
            dropbar = {
              enabled = true,
              color_mode = true,
            },
          },
        },
        color_overrides = {
          mocha = {
            base = "#000000",
            mantle = "#000000",
            crust = "#000000",
          },
        },
        integrations = {
          dropbar = {
            enabled = true,
            color_mode = true,
          },
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
