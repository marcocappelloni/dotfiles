return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		preset = "modern",
		spec = {
			{ "<leader>f", group = "Telescope" }, -- group
			{ "<leader>d", group = "Debugging" }, -- group
			{ "<leader>c", group = "Code" }, -- group
			{ "<leader>g", group = "Formatter" }, -- group
			{ "<leader>s", group = "Selection" }, -- group
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
