--require('vscode').setup({
--    disable_background = true
--})
--
--function ColorMyPencils(color)
--	color = color or "vscode"
--	vim.cmd.colorscheme(color)
--
--	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--
--end
--
--ColorMyPencils()
colors = {
    'blue',
    'darkblue',
    'default',
    'delek',
    'desert',
    'elflord',
    'evening',
    'habamax',
    'industry',
    'koehler',
    'lunaperche',
    'morning',
    'murphy',
    'pablo',
    'peachpuff',
    'quiet',
    'ron',
    'shine',
    'slate',
    'torte',
    'zellner'
}

count = 0

function ColorMyPencils(c)
    return colors[count]
end
