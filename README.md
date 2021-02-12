# nvim-smartbufs

Quickly switch into any active buffer.

## What is nvim-smartbufs?

WIP neovim plugin that will allow easier buffer management.

## Getting Started

This was tested with [Neovim Nightly (0.5)](https://github.com/neovim/neovim/releases/tag/nightly)
  but it should probably work with the stable version as well.

### Installation

Using [vim-plug](https://github.com/junegunn/vim-plug)

```viml
Plug 'johann2357/nvim-smartbufs.nvim'
```

## Usage

Add some mappings according to your needs.
The following mappings are recommended.

```viml
" Jump to the N buffer according to :ls buffer list
" where N is not the buffer number but index in the such list
nnoremap <Leader>1 :lua require("nvim-smartbufs").open_n_active_buffer(1)<CR>
nnoremap <Leader>2 :lua require("nvim-smartbufs").open_n_active_buffer(2)<CR>
nnoremap <Leader>3 :lua require("nvim-smartbufs").open_n_active_buffer(3)<CR>
nnoremap <Leader>4 :lua require("nvim-smartbufs").open_n_active_buffer(4)<CR>
nnoremap <Leader>5 :lua require("nvim-smartbufs").open_n_active_buffer(5)<CR>
nnoremap <Leader>6 :lua require("nvim-smartbufs").open_n_active_buffer(6)<CR>
nnoremap <Leader>7 :lua require("nvim-smartbufs").open_n_active_buffer(7)<CR>
nnoremap <Leader>8 :lua require("nvim-smartbufs").open_n_active_buffer(8)<CR>
nnoremap <Leader>9 :lua require("nvim-smartbufs").open_n_active_buffer(9)<CR>
```
