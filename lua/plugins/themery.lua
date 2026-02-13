return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {
        "tokyonight-night",
        "tokyonight-storm",
        "tokyonight-day",
        "tokyonight-moon",
        "gruvbox",
        "ayu", -- or "ayu-dark", etc.
        "kanagawa-lotus",
        "kanagawa-dragon",
        "kanagawa-wave",
        "catppuccin-latte",
        "catppuccin-frappe",
        "catppuccin-macchiato",
        "catppuccin-mocha",
        "rose-pine-moon",
        "rose-pine-dawn",
        "rose-pine-main",
      },
      livePreview = true,
    })
  end,
}
