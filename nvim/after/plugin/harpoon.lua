local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ha", mark.add_file)
vim.keymap.set("n", "<leader>hs", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>hn", require("harpoon.ui").nav_next)
vim.keymap.set("n", "<leader>hp", require("harpoon.ui").nav_prev)

