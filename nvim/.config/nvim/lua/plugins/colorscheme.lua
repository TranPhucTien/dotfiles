return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  name = "catppuccin",
  config = function()
    require("catppuccin").setup({
      -- Chọn một trong 4 "flavor" (palette): "latte", "frappe", "macchiato", "mocha"
      flavour = "mocha", -- Hoặc "macchiato" là lựa chọn phổ biến
      transparent_background = true, -- Thiết lập nền trong suốt
      show_icons = true, -- Hiện icons (ví dụ: trong tree-sitter)
      term_colors = true, -- Áp dụng màu Catppuccin cho terminal tích hợp
      styles = {
        comments = { "italic" },
        functions = {},
        keywords = {},
        variables = {},
        conditionals = {},
        loops = {},
        -- Các nhóm highlight khác cần chỉnh sửa style
      },
      integrations = {
        -- Tích hợp với các plugin khác, bỏ comment nếu bạn dùng các plugin này
        -- cmp = true,
        -- gitsigns = true,
        -- nvimtree = true,
        -- telescope = true,
        -- ... và nhiều plugin khác
        notify = true,
        mini = true,
        -- Bật/Tắt tích hợp cụ thể. Thiết lập `false` sẽ không load highlight cho plugin đó.
        barbar = false,
        bufferline = false,
        dropbar = false,
      },
    })

    -- Áp dụng theme
    vim.cmd.colorscheme("catppuccin")
  end,
}
