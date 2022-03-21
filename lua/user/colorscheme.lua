local status_ok, nightfox = pcall(require, "nightfox")
if not status_ok then
  return
end

nightfox.setup({
  options = {
    dim_inactive = true,
  }
})

vim.cmd [[
try
  colorscheme nightfox
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
