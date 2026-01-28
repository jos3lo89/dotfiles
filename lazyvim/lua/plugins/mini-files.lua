return {
  "nvim-mini/mini.files",
  opts = {
    content = {
      filter = function(fs_entry)
        local exclude = {
          ["node_modules"] = true,
          [".git"] = true,
          ["generated"] = true,
          ["dist"] = true,
        }

        return not exclude[fs_entry.name]
      end,
    },
  },
}
