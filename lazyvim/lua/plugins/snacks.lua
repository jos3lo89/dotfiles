local utils = require("utils.utils")

return {
	"folke/snacks.nvim",
	opts = {
		dashboard = {
			enabled = true,
			preset = {
				header = utils.logo,
			},
		},
		picker = {
			enabled = true,
			exclude = {
				".git",
				"dist",
				"node_modules",
				"generated",
				"migrations",
			},
		},
	},
}
