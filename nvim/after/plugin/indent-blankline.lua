local indent_blankline_setup, indent_blankline = pcall(require, "indent-blankline")
if not indent_blankline_setup then
	return
end

indent_blankline.setup({
	indentLine_enabled = 1,
	show_trailing_blankline_indent = false,
	show_first_indent_level = false,
})
