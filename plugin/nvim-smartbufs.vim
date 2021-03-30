" fun! NvimSmartBufs()
"   lua for k in pairs(package.loaded) do if k:match("^nvim%-smartbufs") then package.loaded[k] = nil end end
" endfun

" augroup NvimSmartBufs
"   autocmd!
"   nnoremap <Leader>1 :lua require("nvim-smartbufs").goto_buffer(1)<CR>
"   nnoremap <Leader>2 :lua require("nvim-smartbufs").goto_buffer(2)<CR>
"   nnoremap <Leader>3 :lua require("nvim-smartbufs").goto_buffer(3)<CR>
"   nnoremap <Leader>4 :lua require("nvim-smartbufs").goto_buffer(4)<CR>
"   nnoremap <Leader>5 :lua require("nvim-smartbufs").goto_buffer(5)<CR>
"   nnoremap <Leader>6 :lua require("nvim-smartbufs").goto_buffer(6)<CR>
"   nnoremap <Leader>7 :lua require("nvim-smartbufs").goto_buffer(7)<CR>
"   nnoremap <Leader>8 :lua require("nvim-smartbufs").goto_buffer(8)<CR>
"   nnoremap <Leader>9 :lua require("nvim-smartbufs").goto_buffer(9)<CR>
"   nnoremap <Leader>c1 :lua require("nvim-smartbufs").goto_terminal(1)<CR>
"   nnoremap <Leader>c2 :lua require("nvim-smartbufs").goto_terminal(2)<CR>
"   nnoremap <Leader>c3 :lua require("nvim-smartbufs").goto_terminal(3)<CR>
"   nnoremap <Leader>c4 :lua require("nvim-smartbufs").goto_terminal(4)<CR>
"   nnoremap <Right> :lua require("nvim-smartbufs").goto_next_buffer()<CR>
"   nnoremap <Left> :lua require("nvim-smartbufs").goto_prev_buffer()<CR>
" augroup END
