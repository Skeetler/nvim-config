return {
  "coffebar/neovim-project",
  opts = {
    projects = {
      "~/Documents/prj/*",
    },
    picker = {
      type = "telescope",
    },
  },
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
}
