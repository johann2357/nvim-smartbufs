-- Adapted from ThePrimeagen
-- https://github.com/ThePrimeagen/harpoon/blob/abb717f174f9fdafe0867193f81558c1fd7d9b7b/lua/harpoon/term.lua

local M = {}
local terminals = {}

local function create_terminal()

    vim.api.nvim_command("terminal")
    local buf_id = vim.fn.bufnr()
    local term_id  = vim.b.terminal_job_id

    if term_id == nil then
        -- TODO: Throw an erro?
        return nil
    end

    -- Make sure the term buffer has "hidden" set so it doesn't get thrown
    -- away and cause an error
    vim.api.nvim_buf_set_option(0, "bufhidden", "hide")

    return buf_id, term_id
end


M.goto_terminal = function(idx)
    local term_handle = terminals[idx]
    if not term_handle or not vim.api.nvim_buf_is_valid(term_handle.buf_id) then
        local buf_id, term_id = create_terminal()
        if buf_id == nil then
            return
        end

        term_handle = {
            buf_id = buf_id,
            term_id = term_id
        }
        terminals[idx] = term_handle
    else
        vim.api.nvim_set_current_buf(term_handle.buf_id)
    end
end


M.send_command = function(idx, cmd)
    local term_handle = terminals[idx]
    if term_handle == nil then
        return
    end
    if cmd then
        vim.fn.chansend(term_handle.term_id, cmd)
    end
end


return M
