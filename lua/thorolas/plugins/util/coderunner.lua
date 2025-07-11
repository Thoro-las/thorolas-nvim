return {
    "CRAG666/code_runner.nvim",
    config = function()
        local function runcode()
            local current_file = vim.fn.expand("%")
            local project_root = vim.fn.getcwd()
            local fsproj_files = vim.fn.globpath(project_root, "*.fsproj", false, true)

            if #fsproj_files > 0 then
                return "dotnet run"
            else
                return "dotnet fsi " .. current_file
            end
        end

        require("code_runner").setup({
            filetype = {
                haskell = "runghc $file && exit",


                pde = function()
                    local file = vim.fn.expand("%:p")
                    local dir = vim.fn.fnamemodify(file, ":h")
                    return "processing cli --sketch=" .. dir .. " --run"
                end,

                c = function()
                    local filename = vim.fn.expand("%:t:r") -- filename without extension
                    local file = vim.fn.expand("%")
                    return string.format("gcc %s -o %s && ./%s", file, filename, filename)
                end,

                fsharp = runcode,
                fs = runcode,
                fsx = runcode,
            }
        })
    end
}
