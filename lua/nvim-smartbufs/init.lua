local term = require("nvim-smartbufs.term")
local buff = require("nvim-smartbufs.buff")

local M = {}


-- Stable
M.goto_terminal = term.goto_terminal
M.goto_buffer = buff.goto_buffer
M.goto_next_buffer = buff.goto_next_buffer
M.goto_prev_buffer = buff.goto_prev_buffer
M.close_current_buffer = buff.close_current_buffer
M.close_buffer = buff.close_buffer

-- Deprecated
M.open_n_buffer = buff.goto_buffer
M.open_next_buffer = buff.goto_next_buffer
M.open_prev_buffer = buff.goto_prev_buffer


return M
