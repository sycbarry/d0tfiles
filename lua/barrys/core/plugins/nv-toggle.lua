return {
    'akinsho/toggleterm.nvim', version = "*", 
    config = function()
        local toggleterm = require('toggleterm')
        toggleterm.setup({
          open_mapping = [[<c-d>]],
          hide_number = true,
          start_in_insert = true,
          direction = 'horizontal', -- vertical | float | tab
        })
    end
}
