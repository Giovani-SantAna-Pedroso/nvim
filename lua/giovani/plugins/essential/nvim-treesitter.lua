return{
  "nvim-treesitter/nvim-treesitter",
  dependecies={
  },
  --function to config the plugin
  config = function()
    local n = require("nvim-treesitter.configs")
    n.setup({


  ensure_installed = {"python","svelte", "yaml","css", "html","json", "javascript", "typescript", "c", "lua", "vim", "vimdoc", "query" },
  auto_install = true,
  context_commentstring = {
    config = {
       javascript = {
          __default = '// %s',
          jsx_element = '{/* %s */}',
          jsx_fragment = '{/* %s */}',
          jsx_attribute = '// %s',
          comment = '// %s',
       },
       typescript = { __default = '// %s', __multiline = '/* %s */' },
   }
 },
  highlight = {
    enable = true,
 

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  })
  end
}

