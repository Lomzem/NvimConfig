local GOOGLE_CLIENT_ID = vim.env.GOOGLE_CLIENT_ID
if not GOOGLE_CLIENT_ID then
	error("GOOGLE_CLIENT_ID is not set")
end

local GOOGLE_CLIENT_SECRET = vim.env.GOOGLE_CLIENT_SECRET
if not GOOGLE_CLIENT_SECRET then
	error("GOOGLE_CLIENT_SECRET is not set")
end

---@type LazySpec
return {
	dir = "~/coding/tasks-nvim/",
	cmd = { "Tasks", "TasksAuth", "TasksSync", "TasksPurge" },
	keys = {
		{ "<leader>tl", "<cmd>Tasks<cr>" },
	},
	opts = {
		client_id = GOOGLE_CLIENT_ID,
		client_secret = GOOGLE_CLIENT_SECRET,
	},
	dependencies = "nvim-lua/plenary.nvim",
}
