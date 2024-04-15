local config = function()
	require("catppuccin").setup({
		color_overrides = {
			mocha = {
				text = "#f4f4f4",
				subtext1 = "#e0e0e0",
				subtext0 = "#c6c6c6",
				overlay2 = "#a8a8a8",
				overlay1 = "#8d8d8d",
				overlay0 = "#6f6f6f",
				surface2 = "#525252",
				surface1 = "#393939",
				surface0 = "#262626",
				base = "#161616",
				mantle = "#0b0b0b",
				crust = "#000000",
			},
		},
		integrations = {
			dashboard = true,
			gitsigns = true,
			indent_blankline = {
				enabled = true,
				scope_color = "",
				colored_indent_levels = false,
			},
			lsp_saga = true,
			neotree = true,
			cmp = true,
			dap = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = { "italic" },
					hints = { "italic" },
					warnings = { "italic" },
					information = { "italic" },
				},
				underlines = {
					errors = { "underline" },
					hints = { "underline" },
					warnings = { "underline" },
					information = { "underline" },
				},
				inlay_hints = {
					background = true,
				},
			},
			notify = true,
			treesitter = true,
			telescope = {
				enabled = true,
			},
		},
	})
end

return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = config,
}
