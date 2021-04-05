# nvim-smartbufs

WIP neovim plugin that will allow easier buffer management.

Master neovim buffers by quickly switch into any active file or terminal buffer.

## Features

* Switch into any buffer you opened (by index).
* Launch a terminal buffer that won't get deleted so you can reopen it and resume work.
  * Why? When using `:terminal`, if the buffer is not displayed, it will get deleted.
* Go to next and previous buffer in the buffer list.
  * Without considering terminal buffers.
* Close (delete) any buffer or the current one.
  * It will try to preserve your current layout, so it won't close your splits.

## Demo

* Switch between first and third opened buffers
![Switch between 1st and 3rd buffer](https://raw.githubusercontent.com/wiki/johann2357/nvim-smartbufs/screenshots/switch-to-n.gif)
* [Check the complete demo](https://github.com/johann2357/nvim-smartbufs/wiki/Demo)

## Usage

Add some mappings according to your needs.

The following mappings are recommended.

```viml
" Jump to the N buffer (by index) according to :ls buffer list
" where N is NOT the buffer number but the INDEX in such list
" NOTE: it does not include terminal buffers
nnoremap <Leader>1 :lua require("nvim-smartbufs").goto_buffer(1)<CR>
nnoremap <Leader>2 :lua require("nvim-smartbufs").goto_buffer(2)<CR>
nnoremap <Leader>3 :lua require("nvim-smartbufs").goto_buffer(3)<CR>
nnoremap <Leader>4 :lua require("nvim-smartbufs").goto_buffer(4)<CR>
nnoremap <Leader>5 :lua require("nvim-smartbufs").goto_buffer(5)<CR>
nnoremap <Leader>6 :lua require("nvim-smartbufs").goto_buffer(6)<CR>
nnoremap <Leader>7 :lua require("nvim-smartbufs").goto_buffer(7)<CR>
nnoremap <Leader>8 :lua require("nvim-smartbufs").goto_buffer(8)<CR>
nnoremap <Leader>9 :lua require("nvim-smartbufs").goto_buffer(9)<CR>

" Improved :bnext :bprev behavior (without considering terminal buffers)
nnoremap <Right> :lua require("nvim-smartbufs").goto_next_buffer()<CR>
nnoremap <Left> :lua require("nvim-smartbufs").goto_prev_buffer()<CR>

" Open terminal buffer and set it as hidden so it won't get deleted
nnoremap <Leader>c1 :lua require("nvim-smartbufs").goto_terminal(1)<CR>
nnoremap <Leader>c2 :lua require("nvim-smartbufs").goto_terminal(2)<CR>
nnoremap <Leader>c3 :lua require("nvim-smartbufs").goto_terminal(3)<CR>
nnoremap <Leader>c4 :lua require("nvim-smartbufs").goto_terminal(4)<CR>

" Delete current buffer and goes back to the previous one
nnoremap <Leader>qq :lua require("nvim-smartbufs").close_current_buffer()<CR>

" Delete the N buffer according to :ls buffer list
nnoremap <Leader>q1 :lua require("nvim-smartbufs").close_buffer(1)<CR>
nnoremap <Leader>q2 :lua require("nvim-smartbufs").close_buffer(2)<CR>
nnoremap <Leader>q3 :lua require("nvim-smartbufs").close_buffer(3)<CR>
nnoremap <Leader>q4 :lua require("nvim-smartbufs").close_buffer(4)<CR>
nnoremap <Leader>q5 :lua require("nvim-smartbufs").close_buffer(5)<CR>
nnoremap <Leader>q6 :lua require("nvim-smartbufs").close_buffer(6)<CR>
nnoremap <Leader>q7 :lua require("nvim-smartbufs").close_buffer(7)<CR>
nnoremap <Leader>q8 :lua require("nvim-smartbufs").close_buffer(8)<CR>
nnoremap <Leader>q9 :lua require("nvim-smartbufs").close_buffer(9)<CR>
```

## Getting Started

This was tested with [Neovim Nightly (0.5)](https://github.com/neovim/neovim/releases/tag/nightly)
  but it should probably work with the stable version as well.

This is meant for neovim users that use buffers and not tabs
* You might want to have all buffers listed somewhere (optional)
  * I use `nvim-hardline` to list the open buffers at the top.
    * https://github.com/ojroques/nvim-hardline
  * Also it is possible with `vim-airline`.

### Installation

Using [vim-plug](https://github.com/junegunn/vim-plug)

```viml
Plug 'johann2357/nvim-smartbufs'
```

### Future ideas

* Possible new mappings:

```viml
" Delete buffer it is a file buffer or close terminal buffer
nnoremap <Leader>qq :lua require("nvim-smartbufs").close_this()<CR>

" Close all buffers but current one
nnoremap <Leader>qa :lua require("nvim-smartbufs").close_all()<CR>
```

* I might add a simple interface to list and switch to any buffer.
  * Currently, only remaps are the only way to go.
