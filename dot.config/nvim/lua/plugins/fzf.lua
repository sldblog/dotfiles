return {
  "ibhagwan/fzf-lua",
  opts = {
    defaults = {
      file_icons = false,
      git_icons = false,
      color_icons = false,
    },
    files = {
      cwd_prompt = true,
      winopts = {
        preview = { layout = "vertical" },
      },
    },
  },
}
