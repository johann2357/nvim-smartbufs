local term = require("nvim-smartbufs.term")
local buff = require("nvim-smartbufs.buff")

local M = {}


M.goto_terminal = term.goto_terminal
M.goto_buffer = buff.goto_buffer
M.goto_next_buffer = buff.goto_next_buffer
M.goto_prev_buffer = buff.goto_prev_buffer


return M
