local lush = require("lush")
local colors = require("aura.colors")
local styles = require("aura.settings").styles
local utils = require("aura.utils")

-- options (dark mode by default)
local background = colors.background
local foreground = colors.foreground

local red = colors.red
local green = colors.green
local blue = colors.blue
local purple = colors.purple
local purple_faded = colors.purple_faded
local orange = colors.orange
local gray = colors.gray

local bg = vim.o.background
if bg == nil then
	bg = "dark"
	vim.o.background = bg
end

-- swap colors if light mode
if bg == "soft" then
	background = colors.soft_background
	foreground = colors.soft_foreground
	red = colors.soft_red
	green = colors.soft_green
	blue = colors.soft_blue
	purple = colors.soft_purple
	purple_faded = colors.soft_purple_faded
	orange = colors.soft_orange
end

-- extending colors table with basic names for easy customization in g:aura_* options
colors.background = background
colors.foreground = foreground
colors.red = red
colors.green = green
colors.blue = blue
colors.purple = purple
colors.purple_faded = purple_faded
colors.orange = orange

local hls_cursor = utils.get_color_from_var(vim.g.aura_hls_cursor, orange, colors)
local hls_highlight = utils.get_color_from_var(vim.g.aura_hls_highlight, orange, colors)
local number_column = utils.get_color_from_var(vim.g.aura_number_column, nil, colors)
local color_column = utils.get_color_from_var(vim.g.aura_color_column, background, colors)
local vert_split = utils.get_color_from_var(vim.g.aura_vert_split, background, colors)
local tabline_sel = utils.get_color_from_var(vim.g.aura_tabline_sel, green, colors)
local sign_column = utils.get_color_from_var(vim.g.aura_sign_column, background, colors)

local improved_strings_fg = foreground
local improved_strings_bg = background
local improved_strings_gui = styles.italic_strings

local special_string_fg = orange
local special_string_bg = background
local special_string_gui = styles.italic_strings

if not utils.tobool(vim.g.aura_improved_strings) then
	improved_strings_fg = green
	improved_strings_bg = nil
	special_string_bg = nil
	special_string_gui = nil
end

-- neovim terminal mode colors
vim.g.terminal_color_0 = background.hex
vim.g.terminal_color_8 = gray.hex
vim.g.terminal_color_1 = colors.soft_red.hex
vim.g.terminal_color_9 = red.hex
vim.g.terminal_color_2 = colors.soft_green.hex
vim.g.terminal_color_10 = green.hex
vim.g.terminal_color_3 = colors.soft_orange.hex
vim.g.terminal_color_11 = orange.hex
vim.g.terminal_color_4 = colors.soft_blue.hex
vim.g.terminal_color_12 = blue.hex
vim.g.terminal_color_5 = colors.soft_purple.hex
vim.g.terminal_color_13 = purple.hex
vim.g.terminal_color_6 = colors.soft_purple_faded.hex
vim.g.terminal_color_14 = purple_faded.hex
vim.g.terminal_color_7 = foreground.hex
vim.g.terminal_color_15 = foreground.hex

vim.g.colors_name = "aura"

local table_concat = table.concat

local base_group = lush(function()
	return {
		-- Base groups
		AuraForeground({ fg = foreground }),
		AuraGray({ fg = gray }),
		AuraBackground({ fg = background }),

		AuraRed({ fg = red }),
		AuraRedBold({ fg = red, gui = styles.bold }),
		AuraGreen({ fg = green }),
		AuraGreenBold({ fg = green, gui = styles.bold }),
		AuraBlue({ fg = blue }),
		AuraBlueBold({ fg = blue, gui = styles.bold }),
		AuraPurple({ fg = purple }),
		AuraPurpleBold({ fg = purple, gui = styles.bold }),
		AuraPurpleFaded({ fg = purple_faded }),
		AuraPurpleFadedBold({ fg = purple_faded, gui = styles.bold }),
		AuraOrange({ fg = orange }),
		AuraOrangeBold({ fg = orange, gui = styles.bold }),

		AuraRedSign({ fg = red, bg = sign_column, gui = styles.invert_signs }),
		AuraGreenSign({ fg = green, bg = sign_column, gui = styles.invert_signs }),
		AuraBlueSign({ fg = blue, bg = sign_column, gui = styles.invert_signs }),
		AuraPurpleSign({ fg = purple, bg = sign_column, gui = styles.invert_signs }),
		AuraPurpleFadedSign({ fg = purple_faded, bg = sign_column, gui = styles.invert_signs }),
		AuraOrangeSign({ fg = orange, bg = sign_column, gui = styles.invert_signs }),

		AuraRedUnderline({ gui = styles.undercurl, sp = red }),
		AuraGreenUnderline({ gui = styles.undercurl, sp = green }),
		AuraBlueUnderline({ gui = styles.undercurl, sp = blue }),
		AuraPurpleUnderline({ gui = styles.undercurl, sp = purple }),
		AuraPurpleFadedUnderline({ gui = styles.undercurl, sp = purple_faded }),
		AuraOrangeUnderline({ gui = styles.undercurl, sp = orange }),

		ColorColumn({ bg = color_column }),
		Conceal({ fg = blue }),
		Cursor({ gui = styles.inverse }),
		lCursor({ Cursor }),
		iCursor({ Cursor }),
		vCursor({ Cursor }),
		CursorIM({ Cursor }),
		CursorLine({ bg = background }),
		CursorColumn({ CursorLine }),
		Directory({ AuraGreenBold }),
		DiffAdd({ fg = green, bg = background, gui = styles.inverse }),
		DiffChange({ fg = purple_faded, bg = background, gui = styles.inverse }),
		DiffDelete({ fg = red, bg = background, gui = styles.inverse }),
		DiffText({ fg = orange, bg = background, gui = styles.inverse }),
		ErrorMsg({ fg = background, bg = red, gui = styles.bold }),
		VertSplit({ fg = background, bg = vert_split }),
		Folded({ fg = gray, bg = background, gui = styles.italic_strings }),
		FoldColumn({ fg = gray, bg = background }),
		SignColumn({ bg = sign_column }),
		IncSearch({ fg = hls_cursor, bg = background, gui = styles.inverse }),
		LineNr({ fg = background, bg = number_column }),
		CursorLineNr({ fg = orange, bg = background }),
		MatchParen({ bg = background, gui = styles.bold }),
		ModeMsg({ AuraOrangeBold }),
		MoreMsg({ AuraOrangeBold }),
		NonText({ AuraBackground }),
		Normal({ fg = foreground, bg = background }),
		Pmenu({ fg = foreground, bg = background }),
		PmenuSel({ fg = background, bg = foreground, gui = styles.bold }),
		PmenuSbar({ bg = background }),
		PmenuThumb({ bg = background }),
		Question({ AuraOrangeBold }),
		QuickFixLine({ fg = background, bg = orange, gui = styles.bold }),
		Search({ fg = hls_highlight, bg = background, gui = styles.inverse }),
		SpecialKey({ AuraForeground }),
		SpellRare({ AuraPurpleUnderline }),
		SpellBad({ AuraRedUnderline }),
		StatusLine({ fg = background, bg = foreground, gui = styles.inverse }),
		StatusLineNC({ fg = background, bg = foreground, gui = styles.inverse }),
		TabLineFill({ fg = background, bg = background, gui = styles.invert_tabline }),
		TabLine({ fg = background, bg = background, gui = styles.invert_tabline }),
		TabLineSel({ fg = tabline_sel, bg = background, gui = styles.invert_tabline }),
		Title({ AuraGreenBold }),
		Visual({ bg = background, gui = styles.invert_selection }),
		VisualNOS({ Visual }),
		WarningMsg({ AuraRedBold }),
		WildMenu({ fg = blue, bg = background, gui = styles.bold }),
		Constant({ AuraPurple }),
		Special({ fg = special_string_fg, bg = special_string_bg, gui = special_string_gui }),
		String({
			fg = improved_strings_fg,
			bg = improved_strings_bg,
			gui = improved_strings_gui,
		}),
		Character({ AuraPurple }),
		Number({ AuraPurple }),
		Boolean({ AuraPurple }),
		Float({ AuraPurple }),
		Identifier({ AuraBlue }),
		Function({ AuraGreenBold }),
		Statement({ AuraRed }),
		Conditional({ AuraRed }),
		Repeat({ AuraRed }),
		Label({ AuraRed }),
		Exception({ AuraRed }),
		Keyword({ AuraRed }),
		Operator({ AuraOrange }),
		PreProc({ AuraPurpleFaded }),
		Include({ AuraPurpleFaded }),
		Define({ AuraPurpleFaded }),
		Macro({ AuraPurpleFaded }),
		PreCondit({ AuraPurpleFaded }),
		Type({ AuraOrange }),
		StorageClass({ AuraOrange }),
		Structure({ AuraPurpleFaded }),
		Typedef({ AuraOrange }),
		SpecialChar({ AuraRed }),
		Tag({ AuraPurpleFadedBold }),
		Delimiter({ AuraForeground }),
		Comment({ fg = gray, gui = styles.italic_comments }),
		Debug({ AuraRed }),
		Underlined({ fg = blue, gui = styles.underline }),
		Bold({ gui = styles.bold }),
		Italic({ gui = styles.italic }),
		Ignore({}),
		Error({ AuraRed, gui = table_concat({ styles.bold, styles.underline }, ",") }),
		Todo({ fg = foreground, gui = table_concat({ styles.bold, styles.italic_comments }, ",") }),
		diffAdded({ AuraGreen }),
		diffRemoved({ AuraRed }),
		diffChanged({ AuraPurpleFaded }),
		diffFile({ AuraOrange }),
		diffNewFile({ AuraOrange }),
		diffLine({ AuraBlue }),
		-- signature
		SignatureMarkText({ AuraBlueSign }),
		SignatureMarkerText({ AuraPurpleSign }),
		-- gitcommit
		gitcommitSelectedFile({ AuraGreen }),
		gitcommitDiscardedFile({ AuraRed }),
		-- checkhealth
		healthError({ fg = background, bg = red }),
		healthSuccess({ fg = background, bg = green }),
		healthWarning({ fg = background, bg = orange }),
	}
end)

return base_group
