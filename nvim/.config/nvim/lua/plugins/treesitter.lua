return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "jsx",
        "tsx", -- Quan trọng cho React
        "json",
        "html", -- Quan trọng cho React
        "yaml", -- Quan trọng cho NestJS config/deploy
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["it"] = "@tag.inner",
            ["at"] = "@tag.outer",
          },
        },
      },
      -- *** LOẠI BỎ CSS/SCSS khỏi Treesitter ***
      -- Đảm bảo bạn KHÔNG cài đặt: "css", "scss"
    },
  },
}
