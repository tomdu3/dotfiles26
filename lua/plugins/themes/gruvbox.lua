return {
  "ellisonleao/gruvbox.nvim",
  lazy = false, -- Load at startup so themery can see it
  priority = 1000, -- Optional: load early
  config = function()
    require("gruvbox").setup({
      -- You can add your own config here
    })
    -- Optionally set it as default, but themery will override
    -- vim.cmd.colorscheme("gruvbox")
  end,
}
