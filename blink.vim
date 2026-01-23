
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "signal_processor"

let s:bg_substrate    = "#080202"  " Primary background | low_intensity
let s:text_primary    = "#FCE9F1"  " Primary text | high_luminance
let s:text_accent     = "#73BBC9"  " Accent text | mid_band_cyan
let s:boundary_marker = "#F1D4E5"  " Border/highlight | pink_marker

let s:bg_elevated_1   = "#120606"  " Elevated bg +1 | cursor_line
let s:bg_elevated_2   = "#1a0a0a"  " Elevated bg +2 | selection
let s:bg_elevated_3   = "#241010"  " Elevated bg +3 | visual_mode

let s:text_muted      = "#8a7580"  " Muted text | comments (desaturated primary)
let s:text_dim        = "#5a4550"  " Dimmed text | line_numbers

let s:syntax_cyan     = "#73BBC9"  " Functions | user_accent (unchanged)
let s:syntax_blue     = "#7BA3E8"  " Types | shifted toward blue
let s:syntax_teal     = "#6BC9B4"  " Strings | shifted toward teal
let s:syntax_green    = "#8FD9A8"  " Success/diff_add | shifted toward green
let s:syntax_yellow   = "#E8D19A"  " Warnings/numbers | warm_neutral
let s:syntax_orange   = "#E8A985"  " Labels/constants | warm_accent
let s:syntax_red      = "#E87A8A"  " Errors/keywords | warm_alert
let s:syntax_magenta  = "#D990C9"  " Operators/special | magenta_shift
let s:syntax_violet   = "#B8A0D9"  " PreProc/macros | violet_shift

function! s:hi(group, guifg, guibg, gui, ctermfg, ctermbg)
  let l:cmd = "hi " . a:group
  if a:guifg != "" | let l:cmd .= " guifg=" . a:guifg | endif
  if a:guibg != "" | let l:cmd .= " guibg=" . a:guibg | endif
  if a:gui != ""   | let l:cmd .= " gui=" . a:gui     | endif
  if a:ctermfg != "" | let l:cmd .= " ctermfg=" . a:ctermfg | endif
  if a:ctermbg != "" | let l:cmd .= " ctermbg=" . a:ctermbg | endif
  exec l:cmd
endfunction

call s:hi("Normal",        s:text_primary,    s:bg_substrate,   "", "225", "232")
call s:hi("Cursor",        s:bg_substrate,    s:text_accent,    "", "232", "117")
call s:hi("CursorLine",    "",                s:bg_elevated_1,  "NONE", "", "233")
call s:hi("CursorColumn",  "",                s:bg_elevated_1,  "", "", "233")
call s:hi("Visual",        "",                s:bg_elevated_3,  "", "", "234")
call s:hi("VisualNOS",     s:syntax_yellow,   "",               "", "222", "")

call s:hi("StatusLine",    s:text_primary,    s:bg_elevated_2,  "NONE", "225", "234")
call s:hi("StatusLineNC",  s:text_dim,        s:bg_elevated_1,  "NONE", "240", "233")
call s:hi("TabLine",       s:text_muted,      s:bg_elevated_1,  "NONE", "246", "233")
call s:hi("TabLineSel",    s:text_accent,     s:bg_elevated_2,  "NONE", "117", "234")
call s:hi("TabLineFill",   s:text_dim,        s:bg_substrate,   "NONE", "240", "232")


call s:hi("LineNr",        s:text_dim,        s:bg_substrate,   "", "240", "232")
call s:hi("CursorLineNr",  s:text_accent,     s:bg_elevated_1,  "NONE", "117", "233")
call s:hi("SignColumn",    s:text_dim,        s:bg_substrate,   "", "240", "232")
call s:hi("FoldColumn",    s:text_muted,      s:bg_substrate,   "", "246", "232")

call s:hi("Search",        s:bg_substrate,    s:syntax_yellow,  "", "232", "222")
call s:hi("IncSearch",     s:bg_substrate,    s:text_accent,    "", "232", "117")
call s:hi("MatchParen",    s:syntax_magenta,  s:bg_elevated_2,  "bold", "182", "234")

call s:hi("ErrorMsg",      s:syntax_red,      "",               "NONE", "174", "")
call s:hi("WarningMsg",    s:syntax_orange,   "",               "NONE", "180", "")
call s:hi("ModeMsg",       s:syntax_green,    "",               "NONE", "150", "")
call s:hi("MoreMsg",       s:text_accent,     "",               "NONE", "117", "")
call s:hi("Question",      s:syntax_blue,     "",               "NONE", "111", "")

call s:hi("Pmenu",         s:text_primary,    s:bg_elevated_2,  "", "225", "234")
call s:hi("PmenuSel",      s:bg_substrate,    s:text_accent,    "", "232", "117")
call s:hi("PmenuSbar",     "",                s:bg_elevated_1,  "", "", "233")
call s:hi("PmenuThumb",    "",                s:boundary_marker,"", "", "182")

call s:hi("Folded",        s:syntax_blue,     s:bg_elevated_1,  "", "111", "233")
call s:hi("DiffAdd",       s:syntax_green,    s:bg_elevated_1,  "", "150", "233")
call s:hi("DiffChange",    s:syntax_yellow,   s:bg_elevated_1,  "", "222", "233")
call s:hi("DiffDelete",    s:syntax_red,      s:bg_elevated_1,  "", "174", "233")
call s:hi("DiffText",      s:syntax_magenta,  s:bg_elevated_2,  "", "182", "234")

call s:hi("Comment",       s:text_muted,      "",               "italic", "246", "")
call s:hi("String",        s:syntax_teal,     "",               "", "116", "")
call s:hi("Character",     s:syntax_teal,     "",               "", "116", "")
call s:hi("Number",        s:syntax_yellow,   "",               "", "222", "")
call s:hi("Boolean",       s:syntax_magenta,  "",               "", "182", "")
call s:hi("Float",         s:syntax_yellow,   "",               "", "222", "")
call s:hi("Identifier",    s:syntax_blue,     "",               "NONE", "111", "")
call s:hi("Function",      s:text_accent,     "",               "", "117", "")
call s:hi("Statement",     s:syntax_red,      "",               "NONE", "174", "")
call s:hi("Conditional",   s:syntax_red,      "",               "", "174", "")
call s:hi("Repeat",        s:syntax_red,      "",               "", "174", "")
call s:hi("Label",         s:syntax_orange,   "",               "", "180", "")
call s:hi("Operator",      s:syntax_magenta,  "",               "", "182", "")
call s:hi("Keyword",       s:syntax_red,      "",               "bold", "174", "")
call s:hi("Exception",     s:syntax_red,      "",               "bold", "174", "")
call s:hi("PreProc",       s:syntax_violet,   "",               "", "183", "")
call s:hi("Include",       s:syntax_violet,   "",               "", "183", "")
call s:hi("Define",        s:syntax_magenta,  "",               "", "182", "")
call s:hi("Macro",         s:syntax_magenta,  "",               "", "182", "")
call s:hi("PreCondit",     s:syntax_violet,   "",               "", "183", "")
call s:hi("Type",          s:syntax_blue,     "",               "NONE", "111", "")
call s:hi("StorageClass",  s:syntax_blue,     "",               "", "111", "")
call s:hi("Structure",     s:syntax_blue,     "",               "", "111", "")
call s:hi("Typedef",       s:syntax_blue,     "",               "", "111", "")
call s:hi("Special",       s:boundary_marker, "",               "", "182", "")
call s:hi("SpecialChar",   s:boundary_marker, "",               "", "182", "")
call s:hi("Tag",           s:text_accent,     "",               "", "117", "")
call s:hi("Delimiter",     s:text_muted,      "",               "", "246", "")
call s:hi("SpecialComment",s:text_muted,      "",               "italic", "246", "")
call s:hi("Debug",         s:syntax_red,      "",               "", "174", "")
call s:hi("Error",         s:text_primary,    s:syntax_red,     "", "225", "174")
call s:hi("Todo",          s:bg_substrate,    s:syntax_yellow,  "bold", "232", "222")

call s:hi("Directory",     s:text_accent,     "",               "", "117", "")
call s:hi("Title",         s:boundary_marker, "",               "bold", "182", "")

call s:hi("ColorColumn",   "",                s:bg_elevated_1,  "", "", "233")
call s:hi("WildMenu",      s:bg_substrate,    s:text_accent,    "", "232", "117")
call s:hi("VertSplit",     s:bg_elevated_2,   s:bg_substrate,   "NONE", "234", "232")
call s:hi("NonText",       s:text_dim,        "",               "", "240", "")
call s:hi("SpecialKey",    s:text_dim,        "",               "", "240", "")

call s:hi("SpellBad",      s:syntax_red,      "",               "undercurl", "174", "")
call s:hi("SpellCap",      s:syntax_yellow,   "",               "undercurl", "222", "")
call s:hi("SpellLocal",    s:syntax_teal,     "",               "undercurl", "116", "")
call s:hi("SpellRare",     s:syntax_magenta,  "",               "undercurl", "182", "")

hi! link @comment Comment
hi! link @constant String
hi! link @constant.builtin Boolean
hi! link @constant.macro Define
hi! link @string String
hi! link @string.escape SpecialChar
hi! link @character Character
hi! link @number Number
hi! link @boolean Boolean
hi! link @float Float
hi! link @function Function
hi! link @function.builtin Function
hi! link @function.macro Macro
hi! link @parameter Identifier
hi! link @method Function
hi! link @field Identifier
hi! link @property Identifier
hi! link @constructor Special
hi! link @conditional Conditional
hi! link @repeat Repeat
hi! link @label Label
hi! link @operator Operator
hi! link @keyword Keyword
hi! link @exception Exception
hi! link @type Type
hi! link @type.builtin Type
hi! link @type.definition Typedef
hi! link @storageclass StorageClass
hi! link @structure Structure
hi! link @namespace Identifier
hi! link @include Include
hi! link @preproc PreProc
hi! link @debug Debug
hi! link @tag Tag

call s:hi("DiagnosticError", s:syntax_red,    "",               "", "174", "")
call s:hi("DiagnosticWarn",  s:syntax_yellow, "",               "", "222", "")
call s:hi("DiagnosticInfo",  s:text_accent,   "",               "", "117", "")
call s:hi("DiagnosticHint",  s:text_muted,    "",               "", "246", "")

call s:hi("GitSignsAdd",    s:syntax_green,   "",               "", "150", "")
call s:hi("GitSignsChange", s:syntax_yellow,  "",               "", "222", "")
call s:hi("GitSignsDelete", s:syntax_red,     "",               "", "174", "")

