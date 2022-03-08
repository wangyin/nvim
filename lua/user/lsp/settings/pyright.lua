local status_ok, util = pcall(require, "lspconfig/util")
if not status_ok then
	return
end

return {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  -- root_dir = function(startpath)
  --   return M.search_ancestors(startpath, matcher)
  -- end;
  root_dir = util.root_pattern(".git", "setup.py", "requirements.txt");
	settings = {
    python = {
      analysis = {
        autoSearchPaths = true;
        diagnosticMode = "workspace";
        useLibraryCodeForTypes = true;
        typeCheckingMode = "off";
      }
    }
	},
  single_file_support = true,
}
