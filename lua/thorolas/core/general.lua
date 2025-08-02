vim.keymap.set("n", "<space>", "<NOP>");
vim.g.mapleader = " ";
vim.g.maplocalleader = " ";

vim.g.have_nerd_font = true;

vim.opt.number = true;
vim.opt.relativenumber = true;

vim.opt.breakindent = true;
vim.opt.undofile = true;

vim.opt.ignorecase = true;
vim.opt.smartcase = true;

vim.opt.signcolumn = "yes";

vim.opt.shiftwidth = 4;
vim.opt.tabstop = 4;
vim.opt.expandtab = false;

vim.opt.timeoutlen = 300;
vim.opt.updatetime = 250;

vim.opt.mouse = "";
vim.opt.showmode = false;
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus";
end);

vim.opt.splitright = true;
vim.opt.splitbelow = false;

vim.opt.inccommand = "split";
vim.opt.scrolloff = 10;
vim.opt.guicursor = "c-i:ver25";

vim.opt.hidden = true;
vim.opt.termguicolors = true;

vim.opt.list = true;
vim.opt.listchars = {
    eol        = "$",
    tab        = "‣  ",
    trail      = "+",
    multispace = "···•",
    extends    = "‣",
    precedes   = "‣",
};

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.runtimepath:append("/home/thorolas/.nvm/versions/node/v24.2.0/bin")
