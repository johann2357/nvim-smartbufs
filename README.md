# nvim-smartbufs

Quickly switch into any active buffer.

## What is nvim-smartbufs?

WIP neovim plugin that will allow easier buffer management.

Basically the goal is to improve the current `:bnext` or `:bprev`,
and allow switching to any buffer without using `:ls` and then `:buffer <N>`

### Example use cases:

* You might want to switch to the first buffer you opened.
  * Or into any buffer `N` that you oppened.
* If you have a terminal buffer open.
  * And don't want to `:bnext` or `:bprev` to include that terminal buffer.
* Open a terminal buffer
  * And don't want to get rid of that terminal buffer after switching to another one.

## Getting Started

This was tested with [Neovim Nightly (0.5)](https://github.com/neovim/neovim/releases/tag/nightly)
  but it should probably work with the stable version as well.

This is meant for neovim users that use buffers and not tabs
* You might want to have all buffers listed somewhere (optional)
  * I use `vim-airline` to have open buffers listed at the top.


### Installation

Using [vim-plug](https://github.com/junegunn/vim-plug)

```viml
Plug 'johann2357/nvim-smartbufs'
```

## Usage

Add some mappings according to your needs.
The following mappings are recommended.

```viml
" Jump to the N buffer according to :ls buffer list
" where N is not the buffer number but the index in such list
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
```

### Future ideas

* Possible new mappings:

```viml
" Delete current buffer and goes back to the previous one
nnoremap <Leader>qq :lua require("nvim-smartbufs").delete_n_active_buffer(1)<CR>

" Delete the N buffer according to :ls buffer list
nnoremap <Leader>q1 :lua require("nvim-smartbufs").delete_n_active_buffer(1)<CR>
```

* I might add a simple interface to list and switch to any buffer.
  * Currently, only remaps are the only way to go.
