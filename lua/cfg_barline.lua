


require("bufferline").setup{

	highlights = {
	buffer_selected = { italic = false },
	diagnostic_selected = { italic = false },
	hint_selected = { italic = false },
	pick_selected = { italic = false },
	pick_visible = { italic = false },
	pick = { italic = false },
	},

	options = {
      numbers = 'buffer_id',
      diagnostics = 'nvim_lsp',
      seperator_style = 'slant' or 'padded_slant',
      show_tab_indicators = true,
      show_buffer_close_icons = false,
      show_close_icon = false,
    },

}

