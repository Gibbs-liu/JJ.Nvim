local M = {}

M.disabled = {
  n = {
   ["<leader>h"] = "",
   ["<leader>b"] = "",
   ["<leader>n"] = "",
   ["<leader>rn"] = "",
 }

}

M.general = {
  n = {
    ["[b"] = {"<cmd> bp <CR>", "go previous file"},
    ["]b"] = {"<cmd> bn <CR>", "go previous file"},
    ["]t"] = {"<cmd> tabNext <CR>", "go next tab"},
    ["[t"] = {"<cmd> tabprevious <CR>", "go next tab"},
    ["<leader>bd"] = {"<cmd> bd <CR>", "close current buffer"},
  }
}

M.telescope={
  n={
    ["<leader>tt"] = {"<cmd> Telescope <CR>", "Toggle telescope"},
  }
}

M.comment = {
  n={
    ["<leader>cc"] = {"<cmd> CommentToggle <CR>", "Toggle comment"},
  }
}

M.nvterm = {
  plugin = true,

  t = {
    -- toggle in terminal mode
    ["<leader>ft"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

--     ["<A-h>"] = {
--       function()
--         require("nvterm.terminal").toggle "horizontal"
--       end,
--       "Toggle horizontal term",
--     },

--     ["<A-v>"] = {
--       function()
--         require("nvterm.terminal").toggle "vertical"
--       end,
--       "Toggle vertical term",
--     },
  },

  n = {
    -- toggle in normal mode
    ["<leader>ft"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

--     ["<A-h>"] = {
--       function()
--         require("nvterm.terminal").toggle "horizontal"
--       end,
--       "Toggle horizontal term",
--     },

--     ["<A-v>"] = {
--       function()
--         require("nvterm.terminal").toggle "vertical"
--       end,
--       "Toggle vertical term",
--     },

--     -- new
--     ["<leader>h"] = {
--       function()
--         require("nvterm.terminal").new "horizontal"
--       end,
--       "New horizontal term",
--     },

--     ["<leader>v"] = {
--       function()
--         require("nvterm.terminal").new "vertical"
--       end,
--       "New vertical term",
--     },
  },
}



return M


