-- First I would like to thanks the Aaron Boss  i use his configuration
-- https://aaronbos.dev/posts/csharp-dotnet-neovim
--
-- to configure the lsp you need to download the omnisharp using this link
-- https://github.com/OmniSharp/omnisharp-roslyn/releases
-- extract the file then place in someplace in your pc in my case I put the folder:
-- /usr/bin/local/
-- Ensure that all the files can be executed ruing the command:
-- chmod 744 /usr/local/bin/omnisharp-linux-x64-net6.0/*
--
--
local pid = vim.fn.getpid()

local omnisharp_bin = "/usr/local/bin/omnisharp-linux-x64-net6.0/OmniSharp"

return{
  cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) }
  
}
