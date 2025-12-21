local M = {}

function M.setup()
	local colors = {
		bg = "#03140f",
		fg = "#bcd4d3",
		red = "#c75b71",
		green = "#4ce0b6",
		yellow = "#c2bd76",
		blue = "#54a7bf",
		purple = "#cf86d1",
		cyan = "#9bd4d3",
		comment = "#36403d",
		cursorline = "#2a2e2b",
		visual = "#5e6e67",
	}

	local highlights = {
		Method = { fg = colors.cyan },
		-- Operator = { fg = colors.pink },
		Normal = { fg = colors.fg, bg = colors.bg },
		Comment = { fg = colors.comment },
		String = { fg = colors.green },
		Keyword = { fg = colors.cyan, bold = true },
		Visual = { fg = colors.fg, bg = colors.visual, bold = true },
		Function = { fg = colors.cyan },
		Number = { fg = colors.yellow },
		Boolean = { fg = colors.yellow },
		Float = { fg = colors.yellow },
		Character = { fg = colors.pink },
		Type = { fg = colors.green },
		CursorLine = { bg = colors.cursorline },
		["@variable"] = { fg = colors.blue },
		["@variable.builtin"] = { fg = colors.blue },
		["@variable.parameter"] = { fg = colors.blue },
		["@variable.parameter.builtin"] = { fg = colors.blue },
		["@variable.member"] = { fg = colors.blue },
		["@function"] = { fg = colors.cyan, bold = true },
		["@function.builtin"] = { fg = colors.cyan, bold = true },
		["@function.call"] = { fg = colors.cyan, bold = true },
		["@function.macro"] = { fg = colors.cyan, bold = true },
		["@function.method"] = { fg = colors.cyan, bold = true },
		["@function.method.call"] = { fg = colors.cyan, bold = true },
		["@constructor"] = { fg = colors.blue },
		["@constant"] = { fg = colors.red, bold = true },
		["@constant.builtin"] = { fg = colors.red, bold = true },
		["@operator"] = { fg = colors.blue },
		["@keyword"] = { fg = colors.cyan },
		["@keyword.coroutine"] = { fg = colors.cyan },
		["@keyword.function"] = { fg = colors.cyan },
		["@keyword.operator"] = { fg = colors.cyan },
		["@keyword.import"] = { fg = colors.cyan },
		["@keyword.type"] = { fg = colors.cyan },
		["@keyword.modifier"] = { fg = colors.cyan },
		["@keyword.repeat"] = { fg = colors.cyan },
		["@keyword.return"] = { fg = colors.cyan },
		["@keyword.debug"] = { fg = colors.cyan },
		["@keyword.exception"] = { fg = colors.cyan },
		["@keyword.conditional"] = { fg = colors.cyan },
		["@keyword.conditional.ternary"] = { fg = colors.cyan },
		["@type"] = { fg = colors.green },
		["@type.builtin"] = { fg = colors.green },
		["@type.definition"] = { fg = colors.green },
		TelescopeBorder = { fg = colors.green },
		TelescopeSelection = { bg = colors.comment },
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
