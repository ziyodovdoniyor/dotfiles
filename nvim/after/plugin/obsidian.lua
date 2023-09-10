local vimwiki = vim.fn.expand("~/Documents/bank")

require("obsidian").setup({
    dir = vimwiki,
    notes_subdir = "notes",

  log_level = vim.log.levels.DEBUG,

  daily_notes = {
    folder = "notes/dairy",
    date_format = "%Y-%m-%d"
  },

  completion = {
    nvim_cmp = true,
    min_chars = 2,
    new_notes_location = "current_dir",
    prepend_note_id = true
  },

  mappings = {
    ["gf"] = require("obsidian.mapping").gf_passthrough(),
  },

  note_id_func = function(title)
    local suffix = ""
    if title ~= nil then
      --suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      return title
    else
      --for _ = 1, 4 do
      --  suffix = suffix .. string.char(math.random(65, 90))
      --end
        return tostring(os.time())
    end
  end,

  disable_frontmatter = true,

  note_frontmatter_func = function(note)
    local out = { id = note.id, aliases = note.aliases, tags = note.tags }
    if note.metadata ~= nil and require("obsidian").util.table_length(note.metadata) > 0 then
      for k, v in pairs(note.metadata) do
        out[k] = v
      end
    end
    return out
  end,

  templates = {
    subdir = "meta/templates",
    date_format = "%Y-%m-%d-%a",
    time_format = "%H:%M",
  },

  backlinks = {
    height = 10,
    wrap = true,
  },

  follow_url_func = function(url)
    vim.fn.jobstart({"open", url})  -- Mac OS
  end,

  use_advanced_uri = true,
  open_app_foreground = false,
  finder = "telescope.nvim",
  open_notes_in = "current"
})
