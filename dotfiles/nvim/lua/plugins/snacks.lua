return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-lua/plenary.nvim",
    },
    opts = {
      dashboard = { enabled = true },
      explorer = { enabled = true },
      picker = { enabled = true },
      quickfile = { enabled = true },
      notifier = { enabled = true },
      terminal = { enabled = true },
      toggle = { enabled = true },
      -- add others as needed
    },
    keys = {
      {
        "<leader>ff",
        function()
          require("snacks.picker").files()
        end,
        desc = "Files (Snacks)",
      },
      {
        "<leader>e",
        function()
          require("snacks.explorer")()
        end,
        desc = "Explorer (Snacks)",
      },
      {
        "<leader>S",
        function()
          require("snacks.scratch")()
        end,
        desc = "Scratch buffer",
      },
    },
  },
}
