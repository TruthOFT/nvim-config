local opt = vim.opt

-- 行号
opt.relativenumber = false
opt.number = true

--缩进
opt.tabstop = 4
opt.autoindent = true
--防止包裹
opt.wrap = false
-- 光标
opt.cursorline = true

opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
--搜索
opt.ignorecase = true
opt.smartcase = true
--外观
opt.termguicolors = true
opt.signcolumn = "yes"

