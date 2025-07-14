return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "auto", -- auto-detect theme (tokyonight, catppuccin, etc.)
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = { "neo-tree", "alpha", "dashboard", "NvimTree" },
        always_divide_middle = true,
      },
      sections = {
        lualine_a = { { "mode", icon = "" } },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = {
          {
            "filename",
            path = 1, -- 0 = name, 1 = relative path, 2 = absolute path
            symbols = {
              modified = " ●",      -- Text to show when the file is modified.
              readonly = " ",      -- Text to show when the file is non-modifiable or readonly.
              unnamed = "[No Name]",
            },
          },
        },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { { "location", icon = "" } },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = { "neo-tree", "lazy", "toggleterm", "quickfix" },
    })
  end,
}
