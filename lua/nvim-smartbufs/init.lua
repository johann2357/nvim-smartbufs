local function get_active_buffers()
    local bufs = vim.fn.nvim_list_bufs()
    local active_buffers = {}
    local count = 0
    for idx, buf_id in pairs(bufs) do
        if vim.api.nvim_buf_is_valid(buf_id) and vim.fn.getbufvar(buf_id, "&buflisted") == 1 then
            count = count + 1
            active_buffers[count] = buf_id
        end
    end
    --print(vim.inspect(active_buffers))
    return active_buffers
end

local function open_n_active_buffer(n_buf)
    local active_buffers = get_active_buffers()
    local selected_buf = active_buffers[n_buf + 1 - vim.g["nvim_smartbufs_nstart"]]
    if selected_buf then
        -- TODO: find a better way to do this
        vim.api.nvim_command(string.format("buffer %d", selected_buf))
    end
end

return {
    get_active_buffers = get_active_buffers,
    open_n_active_buffer = open_n_active_buffer
}
