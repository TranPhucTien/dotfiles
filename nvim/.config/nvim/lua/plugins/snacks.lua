return {
  {
    "folke/snacks.nvim",
    keys = {
      { "<leader>n", false },
      {
        "<leader>nl",
        function()
          Snacks.picker.notifications()
        end,
        desc = "Notification History",
      },
    },
  },
}
