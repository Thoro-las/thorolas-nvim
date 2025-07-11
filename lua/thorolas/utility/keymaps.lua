local M = {}

function M.map(mode, lhs, rhs, opts)
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
end

function M.group(prefix, name)
    local present, wk = pcall(require, "which-key")
    if present then wk.register({ [prefix] = { name = name }, }) end
end

return M
