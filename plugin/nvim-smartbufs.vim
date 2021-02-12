" fun! NvimSmartBufs()
"   lua for k in pairs(package.loaded) do if k:match("^nvim%-smartbufs") then package.loaded[k] = nil end end
"   lua require("neovim-quick-buffers").get_active_buffers()
"   lua require("neovim-quick-buffers").open_n_active_buffer(2)
" endfun

let g:nvim_smartbufs_nstart = 1

" augroup NvimSmartBufs
"   autocmd!
" augroup END
