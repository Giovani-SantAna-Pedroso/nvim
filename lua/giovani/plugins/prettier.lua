local files_to_run ={
        "css",
        "svelte",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "markdown",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
}
 
return {
  'MunifTanjim/prettier.nvim',
  requires = { 
    {'neovim/nvim-lspconfig'}, 
    {'jose-elias-alvarez/null-ls.nvim'}, 
  },
  ft=files_to_run,
  config = function()
    local n = require("prettier")

    n.setup({
      bin = 'prettier', -- or `'prettierd prettier '` (v0.23.3+)
      filetypes = files_to_run,
      -- This options only will be used if there are not any pretier file in the project
      -- cli_options = {
      --   arrow_parens = "always",
      --   bracket_spacing = true,
      --   bracket_same_line = false,
      --   embedded_language_formatting = "auto",
      --   end_of_line = "lf",
      --   html_whitespace_sensitivity = "css",
      --   -- jsx_bracket_same_line = false,
      --   jsx_single_quote = false,
      --   print_width = 80,
      --   prose_wrap = "preserve",
      --   quote_props = "as-needed",
      --   semi = true,
      --   single_attribute_per_line = false,
      --   single_quote = false,
      --   tab_width = 2,
      --   trailing_comma = "es5",
      --   use_tabs = false,
      --   vue_indent_script_and_style = false,
      -- },
    })
  end
}
