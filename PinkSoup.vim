" PINK SOUP
" SOURCE: https://github.com/reansuens/my-vim-themes/

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "pink_soup"

" --- Core Palette ---
let s:bg        = "#1b0c20"  " Primary background - Dark velvet
let s:bg_alt    = "#2a1b34"  " Secondary background - Mulberry shadow
let s:selection = "#3e2b50"  " Selection background - Plum haze
let s:comment   = "#a584c8"  " Comments - Lavender whisper 
let s:interface = "#f0a8ff"  " Interface accents - Candy lilac
let s:text      = "#ffc0e6"  " Main text - Bubblegum pink
let s:lightfg   = "#ffe0f8"  " Light foreground - Cotton candy
let s:white     = "#ffffff"  " Bright foreground - Snow white

" --- Accent Palette ---
let s:red       = "#ff72d0"  " Keywords / critical - Strawberry glow
let s:orange    = "#ffa18f"  " Labels / warnings - Coral blush
let s:yellow    = "#fff48c"  " Numbers / info - Lemon sorbet
let s:mint      = "#b3ffcc"  " Strings / success - Soft mint
let s:babycyan  = "#80e0ff"  " Identifiers / highlights - Baby cyan
let s:pink      = "#ffb0e0"  " Selection & popups - Neon pink
let s:magenta   = "#d67aff"  " Directories / tags - Orchid neon
let s:violet    = "#c080ff"  " Floating highlights - Mischievous violet

" --- Highlight helper ---
function! s:hi(group, guifg, guibg, ctermfg, ctermbg)
  if a:guifg != "" | exec "hi " . a:group . " guifg=" . a:guifg | endif
  if a:guibg != "" | exec "hi " . a:group . " guibg=" . a:guibg | endif
  if a:ctermfg != "" | exec "hi " . a:group . " ctermfg=" . a:ctermfg | endif
  if a:ctermbg != "" | exec "hi " . a:group . " ctermbg=" . a:ctermbg | endif
endfunction

" --- Core Interface ---
call s:hi("Normal",        s:text,      s:bg,       "217", "235")
call s:hi("Cursor",        s:bg,        s:text,     "235", "217")
call s:hi("CursorLine",    "",          s:bg_alt,   "", "236")
call s:hi("CursorColumn",  "",          s:bg_alt,   "", "236")
call s:hi("Visual",        "",          s:selection,"","237")
call s:hi("VisualNOS",     s:red,       "",        "217","")

" --- Statusline ---
call s:hi("StatusLine",    s:interface, s:bg_alt,   "225", "236")
call s:hi("StatusLineNC",  s:comment,   s:bg_alt,   "140", "236")
call s:hi("TabLine",       s:interface, s:bg_alt,   "225", "236")
call s:hi("TabLineSel",    s:white,     s:selection,"231","237")
call s:hi("TabLineFill",   s:comment,   s:bg_alt,   "140","236")

" --- Navigation ---
call s:hi("LineNr",        s:comment,   s:bg,       "140","235")
call s:hi("CursorLineNr",  s:interface, s:bg_alt,   "225","236")
call s:hi("SignColumn",    s:comment,   s:bg,       "140","235")
call s:hi("FoldColumn",    s:comment,   s:bg,       "140","235")

" --- Search / Match ---
call s:hi("Search",        s:bg,       s:yellow,    "236","229")
call s:hi("IncSearch",     s:bg,       s:orange,    "236","214")
call s:hi("MatchParen",    s:white,    s:selection,"231","237")

" --- Messages ---
call s:hi("ErrorMsg",      s:red,     "", "217","")
call s:hi("WarningMsg",    s:orange,  "", "214","")
call s:hi("ModeMsg",       s:mint,    "", "120","")
call s:hi("MoreMsg",       s:babycyan,"", "117","")
call s:hi("Question",      s:violet,  "", "225","")

" --- Popup menus ---
call s:hi("Pmenu",         s:text,    s:bg_alt,   "217","236")
call s:hi("PmenuSel",      s:white,   s:pink,    "231","218")
call s:hi("PmenuSbar",     "",        s:selection,"","237")
call s:hi("PmenuThumb",    "",        s:interface,"","225")

" --- Folding / Diff ---
call s:hi("Folded",        s:interface, s:bg_alt, "225","236")
call s:hi("DiffAdd",       s:mint,     s:bg_alt, "120","236")
call s:hi("DiffChange",    s:yellow,   s:bg_alt, "229","236")
call s:hi("DiffDelete",    s:red,     s:bg_alt, "217","236")
call s:hi("DiffText",      s:violet,   s:bg_alt, "225","236")

" --- Spell ---
"call s:hi("SpellBad",      s:red,      "", "217","")
"call s:hi("SpellCap",      s:orange,   "", "214","")
"call s:hi("SpellLocal",    s:babycyan, "", "117","")
"call s:hi("SpellRare",     s:magenta,  "", "225","")

" --- Syntax (colors only) ---
call s:hi("Comment",       s:comment,  "", "140","")
call s:hi("String",        s:mint,     "", "120","")
call s:hi("Character",     s:mint,     "", "120","")
call s:hi("Number",        s:magenta,  "", "225","")
call s:hi("Boolean",       s:magenta,  "", "225","")
call s:hi("Float",         s:magenta,  "", "225","")
call s:hi("Identifier",    s:babycyan, "", "117","")
call s:hi("Function",      s:violet,   "", "225","")
call s:hi("Statement",     s:red,      "", "217","")
call s:hi("Conditional",   s:red,      "", "217","")
call s:hi("Repeat",        s:red,      "", "217","")
call s:hi("Label",         s:orange,   "", "214","")
call s:hi("Operator",      s:text,     "", "217","")
call s:hi("Keyword",       s:red,      "", "217","")
call s:hi("Exception",     s:red,      "", "217","")
call s:hi("PreProc",       s:yellow,   "", "229","")
call s:hi("Include",       s:violet,   "", "225","")
call s:hi("Define",        s:magenta,  "", "225","")
call s:hi("Macro",         s:magenta,  "", "225","")
call s:hi("PreCondit",     s:yellow,   "", "229","")
call s:hi("Type",          s:yellow,   "", "229","")
call s:hi("StorageClass",  s:orange,   "", "214","")
call s:hi("Structure",     s:babycyan, "", "117","")
call s:hi("Typedef",       s:babycyan, "", "117","")
call s:hi("Special",       s:orange,   "", "214","")
call s:hi("SpecialChar",   s:orange,   "", "214","")
call s:hi("Tag",           s:babycyan, "", "117","")
call s:hi("Delimiter",     s:interface,"", "225","")
call s:hi("SpecialComment",s:interface,"", "225","")
call s:hi("Debug",         s:red,      "", "217","")
call s:hi("Error",         s:white,    s:red, "231","217")
call s:hi("Todo",          s:bg,       s:yellow, "236","229")

" --- Directory / :Ex ---
call s:hi("Directory", s:pink,"","225","")


" --- Non-GUI terminals ---
if !has("gui_running")
  call s:hi("Normal",    "", "", "249","236")
  call s:hi("NonText",   "", "", "140","")
  call s:hi("Directory", s:pink,"","225","")
  call s:hi("Title",     s:pink,"","225","")
endif

" --- Extended operations ---
call s:hi("ColorColumn", "", s:bg_alt, "", "238")
call s:hi("WildMenu",    s:pink, s:selection, "225","238")
call s:hi("User1",       s:mint, s:bg_alt, "120","236")
call s:hi("User2",       s:red,  s:bg_alt, "217","236")
call s:hi("User3",       s:babycyan, s:bg_alt,"117","236")
