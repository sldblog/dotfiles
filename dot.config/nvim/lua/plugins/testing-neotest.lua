return {
  "nvim-neotest/neotest",
  dependencies = {
    "haydenmeade/neotest-jest",
    "zidhuss/neotest-minitest",
  },
  opts = {
    discovery = { enabled = false },
    adapters = {
      ["neotest-jest"] = {},
      ["neotest-minitest"] = {
        test_cmd = function()
          return { "env", "VIM=1", "bin/rails", "test" }
        end,
      },
    },
  },
}
