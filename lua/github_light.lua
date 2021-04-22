local Color, colors, Group, groups, styles = require('colorbuddy').setup()
local g = require('colorbuddy.group').groups
local c = require('colorbuddy.color').colors
local s = require('colorbuddy.style').styles
local bold = s.bold
local italic = s.italic
local uc = s.undercurl
local ul = s.underline
local reverse = s.reverse
local none = s.NONE
local v = vim.g

v.colors_name = 'github_light'


-------------------
-- Color Palette --
-------------------

Color.new('bg_primary',   '#ffffff')
Color.new('bg_secondary', '#fafbfc')
Color.new('bg_tertiary',  '#f6f8fa')

Color.new('fg_primary',   '#24292e')
Color.new('fg_secondary', '#586069')
Color.new('fg_tertiary',  '#6a737d')

Color.new('gray',         '#959da5')
Color.new('red',          '#d73a49')
Color.new('light_green',  '#bef5cb')
Color.new('dark_green',   '#28a745')
Color.new('yellow',       '#ffdf5d')
Color.new('orange',       '#e36209')
Color.new('light_blue',   '#005cc5')
Color.new('dark_blue',    '#032f62')
Color.new('purple',       '#6f42c1')


------------------
-- Diff Colors --
------------------

Color.new('diff_red',    '#ffeef0')
Color.new('diff_green',  '#e6ffed')
Color.new('diff_yellow', '#fff5b1')
Color.new('diff_blue',    '#dbedff')


-----------------------
---- Terminal Colors --
-----------------------

v.terminal_color_0 = '#24292e'   -- black
v.terminal_color_8 = '#24292e'   -- black bright

v.terminal_color_1 = '#d73a49'   -- red
v.terminal_color_9 = '#d73a49'   -- red bright

v.terminal_color_2 = '#28a745'   -- green
v.terminal_color_10 = '#28a745'  -- green bright

v.terminal_color_3 = '#e36209'   -- yellow
v.terminal_color_11 = '#e36209'  -- yellow bright

v.terminal_color_4 = '#032f62'   -- blue
v.terminal_color_12 = '#032f62'  -- blue bright

v.terminal_color_5 = '#6f42c1'   -- magenta
v.terminal_color_13 = '#6f42c1'  -- magenta bright

v.terminal_color_6 = '#005cc5'   -- cyan
v.terminal_color_14 = '#005cc5'  -- cyan bright

v.terminal_color_7 = '#e1e4e8'   -- white
v.terminal_color_15 = '#e1e4e8'  -- white bright


-------------------------------------------------------------
-- Syntax Groups (descriptions and ordering from `:h w18`) --
-------------------------------------------------------------

Group.new('Boolean', c.light_blue, c.none, none)        -- Boolean constant: TRUE, false
Group.new('Character', c.dark_blue, c.none, none)       -- Character constant: 'c', '/n'
Group.new('Conditional', c.red, c.none, none)           -- An if, then, else, endif, switch, etc.
Group.new('Constant', c.dark_blue, c.none, none)        -- Generic constant
Group.new('Debug', c.red, c.none, none)                 -- Debugging statements
Group.new('Define', c.red, c.none, none)                -- Preprocessor #define
Group.new('Exception', c.red, c.none, none)             -- A try, catch, throw, etc.
Group.new('Float', c.light_blue, c.none, none)          -- Floating point constant: 2.3e10
Group.new('Function', c.purple, c.none, none)           -- Function/Method name
Group.new('Include', c.purple, c.none, none)            -- Preprocessor #include
Group.new('Identifier', c.light_blue, c.none, none)     -- Variable name
Group.new('Keyword', c.red, c.none, none)               -- Any other keyword
Group.new('Label', c.red, c.none, none)                 -- A case, default, etc.
Group.new('Macro', c.red, c.none, none)                 -- Same as Define
Group.new('Number', c.light_blue, c.none, none)         -- Number constant: 234, 0xff
Group.new('Operator', c.light_blue, c.none, none)       -- sizeof", "+", "*", etc.
Group.new('PreCondit', c.red, c.none, none)             -- Preprocessor #if, #else, #endif, etc.
Group.new('PreProc', c.red, c.none, none)               -- Generic Preprocessor
Group.new('Repeat', c.red, c.none, none)                -- A for, do, while, etc.
Group.new('Special', c.dark_blue, c.none, none)         -- Generic statement
Group.new('Statement', c.red, c.none, none)             -- Generic statement
Group.new('StorageClass', c.orange, c.none, none)       -- A static, register, volatile, etc.
Group.new('String', c.dark_blue, c.none, none)          -- String constant
Group.new('Structure', c.orange, c.none, none)          -- A struct, union, enum, etc.
Group.new('Type', c.orange, c.none, none)               -- Generic type: int, long, char, etc.
Group.new('Typedef', c.orange, c.none, none)            -- A typedef

Group.new('Comment', c.gray, c.none, italic)            -- Comments
Group.new('Error', c.red, c.none, bold + reverse)       -- Error
Group.new('Todo', c.fg_primary, c.none, bold + italic)  -- TODO
Group.new('Underlined', c.dark_blue, c.none, ul)


--------------------------------------------------------------------------------
-- Highlighting Groups (descriptions and ordering from `:h highlight-groups`) --
--------------------------------------------------------------------------------

-- General UI
Group.new('Normal', c.fg_primary, c.bg_primary, none)                          -- The main background and foreground colors
Group.new('ColorColumn', c.none, c.bg_tertiary, none)                          -- Used for the columns set with 'colorcolumn'
Group.new('Conceal', c.dark_blue, c.bg_primary, none)                          -- Placeholder characters substituted for concealed text (see 'conceallevel')
Group.new('Cursor', c.none, c.none, reverse)                                   -- The character under the cursor
Group.new('CursorColumn', c.none, c.none, reverse)                             -- Current cursor column highlight
Group.new('CursorLine', c.none, c.bg_tertiary, none)
Group.new('CursorLineNr', c.fg_primary, c.bg_tertiary, bold)                   -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line
Group.new('CursorIM', c.fg_primary, c.none, reverse)                           -- Like Cursor but used when in IME mode
Group.new('Directory', c.orange, c.none, bold)                                 -- Directory names (and other special names in listings)
Group.new('EndOfBuffer', c.gray, c.none, none)                                 -- The '~' displayed and the end of a buffer
Group.new('ErrorMsg', c.bg_primary, c.red, bold)                               -- Error messages on the command line
Group.new('MatchParen', c.none, c.bg_tertiary, bold)                           -- Match paired bracket under the cursor
Group.new('MoreMsg', c.none, c.yellow, bold)                                   -- More-prompt: -- More --
Group.new('ModeMsg', c.none, c.yellow, bold)                                   -- Current mode message (e.g., -- INSERT --)
Group.new('NonText', c.gray, c.none, none)                                     -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line)
Group.new('Question', c.orange, c.none, bold)                                  -- 'Press enter' prompt and yes/no questions
Group.new('Search', c.none, c.yellow, none)                                    -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
Group.new('IncSearch', c.none, c.yellow, none)                                 -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
Group.new('SpecialKey', c.bg_tertiary, c.none, none)                           -- Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is
Group.new('StatusLine', c.bg_tertiary, c.fg_primary, reverse)                  -- Status line of current window
Group.new('StatusLineNC', c.bg_secondary, c.fg_tertiary, reverse)              -- Status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window
Group.new('StatusLineTerm', g.StatusLine, g.StatusLine, g.StatusLine)          -- Status line of current :terminal window
Group.new('StatusLineTerm', c.bg_primary, c.light_green, g.StatusLine)         -- Status line of current :terminal window
Group.new('StatusLineTermNC', g.StatusLineNC, g.StatusLineNC, g.StatusLineNC)  -- Status line of non-current :terminal window
Group.new('TabLineFill', c.bg_tertiary, c.gray, none)                          -- Tab pages line filler
Group.new('TabLineSel', c.red, c.bg_tertiary, none)                            -- Active tab page label
Group.new('TabLine', g.TabLineFill, g.TabLineFill, g.TabLineFill)
Group.new('Title', c.light_green, c.none, bold)                                -- Titles for output from :set all, :autocmd, etc.
Group.new('Visual', c.none, c.light_green, none)                               -- Visual mode selection
Group.new('VisualNOS', g.Visual, g.Visual, g.Visual)                           -- Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
Group.new('VertSplit', c.bg_tertiary, c.none, none)                            -- The column separating vertically split windows
Group.new('WarningMsg', c.red, c.none, bold)                                   -- Warning messages
Group.new('WildMenu', c.dark_blue, c.bg_tertiary, bold)                        -- Current match in wildmenu completion

-- Diffs
Group.new('DiffAdd', c.fg_primary, c.diff_green, none)    -- Diff mode: Added line
Group.new('DiffChange', c.fg_primary, c.diff_blue, none)  -- Diff mode: Changed line
Group.new('DiffDelete', c.fg_primary, c.diff_red, none)   -- Diff mode: Deleted line
Group.new('DiffText', c.fg_primary, c.diff_yellow, none)  -- Diff mode: Changed text within a changed line

-- Completion Menu
Group.new('Pmenu', c.fg_primary, c.bg_tertiary, none)    -- Popup menu: normal item
Group.new('PmenuSel', c.bg_tertiary, c.dark_blue, bold)  -- Popup menu: selected item
Group.new('PmenuSbar', c.none, c.bg_tertiary, none)      -- Popup menu: scrollbar
Group.new('PmenuThumb', c.none, c.bg_tertiary, none)     -- Popup menu: scrollbar thumb

-- Gutter
Group.new('Folded', c.gray, c.bg_secondary, italic)    -- Line used for closed folds
Group.new('FoldColumn', c.gray, c.bg_secondary, none)  -- Column where folds are displayed
Group.new('LineNr', c.gray, c.none, none)              -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
Group.new('SignColumn', c.bg_primary, c.none, none)    -- column where signs are displayed

-- Spelling
Group.new('SpellBad', c.red, c.none, italic + uc)           -- Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
Group.new('SpellCap', c.dark_green, c.none, italic + bold)  -- Word that should start with a capital. This will be combined with the highlighting used otherwise.
Group.new('SpellLocal', c.none, c.none, uc)                 -- Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
Group.new('SpellRare', c.purple, c.none, uc)                -- Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.


------------------------------------
-- Language-Specific Highlighting --
------------------------------------

-- CSS
Group.new('cssAttrCommna', c.fg_primary, c.none, none)
Group.new('cssBraces', c.fg_primary, c.none, none)
Group.new('cssClassName', c.light_blue, c.none, none)
Group.new('cssFunctionName', c.purple, c.none, none)
Group.new('cssDefinition', c.light_blue, c.none, none)
Group.new('cssPseudoClass', c.light_blue, c.none, none)
Group.new('cssPseudoClassId', c.light_blue, c.none, none)
Group.new('cssTagName', c.dark_green, c.none, none)
Group.new('cssTextProp', c.light_blue, c.none, none)
Group.new('cssAnimationProp', c.light_blue, c.none, none)
Group.new('cssBorderProp', c.light_blue, c.none, none)
Group.new('cssIEUIProp', c.light_blue, c.none, none)
Group.new('cssMediaProp', c.light_blue, c.none, none)
Group.new('cssUIProp', c.light_blue, c.none, none)
Group.new('cssTransformProp', c.light_blue, c.none, none)
Group.new('cssTransitionProp', c.light_blue, c.none, none)
Group.new('cssPageProp', c.light_blue, c.none, none)
Group.new('cssPrintProp', c.light_blue, c.none, none)
Group.new('cssPositioningProp', c.light_blue, c.none, none)
Group.new('cssBoxProp', c.light_blue, c.none, none)
Group.new('cssFontDescriptorProp', c.light_blue, c.none, none)
Group.new('cssFlexibleBoxProp', c.light_blue, c.none, none)
Group.new('cssBorderOutlineProp', c.light_blue, c.none, none)
Group.new('cssBackgroundProp', c.light_blue, c.none, none)
Group.new('cssMarginProp', c.light_blue, c.none, none)
Group.new('cssListProp', c.light_blue, c.none, none)
Group.new('cssTableProp', c.light_blue, c.none, none)
Group.new('cssFontProp', c.light_blue, c.none, none)
Group.new('cssPaddingProp', c.light_blue, c.none, none)
Group.new('cssDimensionProp', c.light_blue, c.none, none)
Group.new('cssRenderProp', c.light_blue, c.none, none)
Group.new('cssColorProp', c.light_blue, c.none, none)
Group.new('cssGeneratedContentProp', c.light_blue, c.none, none)

-- HTML
Group.new('htmlTag', c.fg_primary, c.none, none)
Group.new('htmlEndTag', c.fg_primary, c.none, none)
Group.new('htmlTagName', c.dark_green, c.none, none)
Group.new('htmlArg', c.light_blue, c.none, none)
Group.new('htmlScriptTag', c.purple, c.none, none)
Group.new('htmlTagN', c.fg_primary, c.none, none)
Group.new('htmlSpecialTagName', c.light_blue, c.none, bold)
Group.new('htmlSpecialChar', c.light_blue, c.none, none)
Group.new('htmlLink', c.fg_tertiary, c.none, ul)
Group.new('htmlBold', c.fg_primary, c.bg_primary, bold)
Group.new('htmlBoldUnderline', c.fg_primary, c.bg_primary, bold + ul)
Group.new('htmlBoldItalic', c.fg_primary, c.bg_primary, bold + italic)
Group.new('htmlItalic', c.fg_primary, c.bg_primary, italic)
Group.new('htmlUnderline', c.fg_primary, c.bg_primary, ul)
Group.new('htmlUnderlineItalic', c.fg_primary, c.bg_primary, ul + italic)

-- JavaScript
Group.new('jsFunction', c.red, c.none, none)
Group.new('jsGlobalObjects', c.orange, c.none, none)
Group.new('jsObjectProp', c.light_blue, c.none, none)
Group.new('jsOperatorKeyword', c.red, c.none, none)
Group.new('jsStorageClass', c.red, c.none, none)

-- Lua
Group.new('luaConstant', c.light_blue, c.none, none)
Group.new('luaTable', c.fg_primary, c.none, none)
Group.new('luaStatement', c.red, c.none, none)

-- Ruby
Group.new('rubyHelper', c.purple, c.none, none)
Group.new('rubyInterpolationDelimiter', c.light_blue, c.none, none)
Group.new('rubyKeywordAsMethod', c.purple, c.none, none)


---------------------
-- Neovim Builtins --
---------------------

Group.new("healthError", c.red, c.fg_secondary)
Group.new("healthSuccess", c.dark_green, c.bg_primary)
Group.new("healthWarning", c.yellow, c.bg_primary)
Group.new("TermCursorNC", c.fg_primary, c.bg_primary)
