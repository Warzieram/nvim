return {
	"debugloop/telescope-undo.nvim",
	dependencies = { -- note how they're inverted to above example
		{
			"nvim-telescope/telescope.nvim",
			dependencies = { "nvim-lua/plenary.nvim" },
		},
	},
	keys = {
		{ -- lazy style key map
			"<leader>u",
			"<cmd>Telescope undo<cr>",
			desc = "undo history",
		},
	},
	opts = {
		extensions = {
			undo = {
			},
		},
	},
	config = function(_, opts)

		require("telescope").setup(opts)
		require("telescope").load_extension("undo")

		vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
	end,
}

