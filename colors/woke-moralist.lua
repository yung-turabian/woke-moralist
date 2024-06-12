
local colors = {
-- PATCH_OPEN
Normal = {fg = "#D2B998", bg = "#062827"},
Define = {link = "Normal"},
Include = {link = "Normal"},
PreProc = {link = "Normal"},
Boolean = {fg = "#8BE4C8"},
Character = {fg = "#22B996"},
Comment = {fg = "#47C743", bg = "#062827"},
Conditional = {fg = "#FFFFFF"},
Float = {fg = "#8BE4C8"},
LineNr = {fg = "#0A4240", bg = "#062827"},
Macro = {fg = "#FFFFFF"},
Number = {fg = "#8BE4C8"},
Repeat = {fg = "#FFFFFF"},
Search = {fg = "#D2B998", bg = "#0000FF"},
StatusLine = {fg = "#062827", bg = "#D2B998", bold = true},
StorageClass = {fg = "#FFFFFF"},
String = {fg = "#22B996"},
Todo = {fg = "#FFD35C", bold = true},
Type = {fg = "#8DE891", bg = "#062827"},
Typedef = {fg = "#FFFFFF"},
Visual = {fg = "#D2B998", bg = "#0000FF"},
-- PATCH_CLOSE
}

-- General settings
vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.cmd("let g:colors_name='woke-moralist'")

-- apply highlight groups
for group, attrs in pairs(colors) do
  vim.api.nvim_set_hl(0, group, attrs)
end
