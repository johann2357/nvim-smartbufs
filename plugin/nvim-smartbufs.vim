" fun! NvimSmartBufs()
"   lua for k in pairs(package.loaded) do if k:match("^nvim%-smartbufs") then package.loaded[k] = nil end end
"   lua require("nvim-smartbufs").get_active_buffers(require("nvim-smartbufs").is_terminal_buffer)
"   lua require("nvim-smartbufs").get_active_buffers(require("nvim-smartbufs").is_file_buffer)
" endfun

let g:nvim_smartbufs_nstart = 1

" augroup NvimSmartBufs
"   autocmd!
" augroup END
