local M = {}

function M.map(mode, lhs, rhs, opts)
    local present, wk = pcall(require, "which-key")

    if (present) then wk.add({mode = mode, {lhs, rhs, opts}})
    else vim.keymap.set(mode, lhs, rhs, opts) end
end

function M.mapnr(mode, lhs, rhs, desc)
    local opts = {}
    opts.noremap = true
    opts.desc = desc
    M.map(mode, lhs, rhs, opts)
end

function M.mapsnr(mode, lhs, rhs, desc)
    local opts = {}
    opts.noremap = true
    opts.silent = true
    opts.desc = desc
    M.map(mode, lhs, rhs, opts)
end

function M.command(lhs, rhs, desc)
    M.map("n", lhs, "<cmd>" .. rhs .. "<CR>", { desc = desc });
end

function M.group(prefix, name)
    local present, wk = pcall(require, "which-key")
    if present then wk.add({ {prefix, group = "+" .. name} }) end
end

return M
