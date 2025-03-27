local M = {}

local state = {
	buf = -1,
	win = -1,
}

local function hide_terminal()
	vim.api.nvim_win_hide(state.win)
end

local function create_floating_terminal()
	local width = math.floor(vim.o.columns * 0.8)
	local height = math.floor(vim.o.lines * 0.5)

	-- Calculate the position to center the window
	local row = math.floor((vim.o.lines - height) / 2)
	local col = math.floor((vim.o.columns - width) / 2)

	-- Create the floating window
	if not vim.api.nvim_buf_is_valid(state.buf) then
		state.buf = vim.api.nvim_create_buf(false, true)
	end

	state.win = vim.api.nvim_open_win(state.buf, true, {
		relative = "editor",
		width = width,
		height = height,
		row = row,
		col = col,
		style = "minimal",
		border = "rounded", -- Optional: add a rounded border
	})

	if vim.bo[state.buf].buftype ~= "terminal" then
		vim.cmd.term()
		vim.keymap.set("n", "<ESC>", hide_terminal, { buffer = state.buf })
	end
end

local function toggle_terminal()
	if not vim.api.nvim_win_is_valid(state.win) then
		create_floating_terminal()
	else
		hide_terminal()
	end
end

M.setup = function(opts)
	local keymap = opts.keymap or "<leader>t"

	vim.keymap.set("n", keymap, toggle_terminal)
end

return M
