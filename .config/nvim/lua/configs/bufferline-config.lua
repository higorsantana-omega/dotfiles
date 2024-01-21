vim.opt.termguicolors = true

require("bufferline").setup({
  options = {
    separator_style = "slant",
    indicator = {
      style = 'underline'
    },
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        separator = false
      }
    },
    numbers = "ordinal",
  }
})