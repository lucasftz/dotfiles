custom_aquarium = require 'lualine.themes.aquarium'
custom_aquarium.normal.c.bg = NONE
custom_aquarium.insert.c.bg = NONE
custom_aquarium.visual.c.bg = NONE
custom_aquarium.command.c.bg = NONE

require('lualine').setup {
    options = {
        theme = custom_aquarium
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        -- lualine_y = {'progress'},
        lualine_z = {'location'}
  },
}
