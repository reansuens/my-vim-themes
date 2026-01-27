" BARNEY THEME 
"  source https://github.com/reansuens/my-vim-themes/

set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "femboywire"


hi netrwDir   guifg=#ff87d7 ctermfg=212
hi netrwPlain guifg=#dcdcdc ctermfg=253
hi netrwExe   guifg=#a3be8c ctermfg=107

" --- Core Palette ---
let s:bg        = "#0c0c0f"  " Primary background - Onyx black
let s:bg_alt    = "#1a1a1f"  " Secondary background - Shadow veil
let s:selection = "#2e1a38"  " Selection - Wiremesh purple
let s:comment   = "#6e5e80"  " Comments - Dusty lavender
let s:interface = "#8c7ba1"  " UI accents - Soft violet
let s:text      = "#e0d7f0"  " Primary text - Lilac white
let s:white     = "#f5efff"  " Bright foreground - Moonlight white

" --- Accent Palette ---
let s:pink       = "#f49be0" " Pop accents / keywords
let s:magenta    = "#c163f5" " Functions / protocol highlights
let s:purple     = "#8c42f5" " Statements / operators
let s:cyan       = "#72e3f5" " Identifiers / symbols
let s:yellow     = "#f5e272" " Warnings / PreProc
let s:green      = "#82f5b0" " Operational success / strings

" --- Highlight helper ---
function! s:hi(group, guifg, guibg, ctermfg, ctermbg)
  if a:guifg != "" | exec "hi " . a:group . " guifg=" . a:guifg | endif
  if a:guibg != "" | exec "hi " . a:group . " guibg=" . a:guibg | endif
  if a:ctermfg != "" | exec "hi " . a:group . " ctermfg=" . a:ctermfg | endif
  if a:ctermbg != "" | exec "hi " . a:group . " ctermbg=" . a:ctermbg | endif
endfunction

" --- Core Interface ---
call s:hi("Normal",       s:text,       s:bg,       "252","233")
call s:hi("Cursor",       s:bg,         s:text,     "233","252")
call s:hi("CursorLine",   "",           s:bg_alt,   "",   "234")
call s:hi("CursorColumn", "",           s:bg_alt,   "",   "234")
call s:hi("Visual",       "",           s:selection,"","236")

" --- Statusline ---
call s:hi("StatusLine",   s:interface, s:bg_alt, "245","234")
call s:hi("StatusLineNC", s:comment,   s:bg_alt, "240","234")
call s:hi("TabLine",      s:interface, s:bg_alt, "245","234")
call s:hi("TabLineSel",   s:white,     s:selection,"255","236")
call s:hi("TabLineFill",  s:comment,   s:bg_alt, "240","234")

" --- Navigation ---
call s:hi("LineNr",       s:comment,   s:bg,       "240","233")
call s:hi("CursorLineNr", s:interface, s:bg_alt,   "245","234")
call s:hi("SignColumn",   s:comment,   s:bg,       "240","233")
call s:hi("FoldColumn",   s:comment,   s:bg,       "240","233")

" --- Search / Match ---
call s:hi("Search",       s:bg,      s:yellow,    "233","221")
call s:hi("IncSearch",    s:bg,      s:pink,      "233","218")
call s:hi("MatchParen",   s:white,   s:selection,"255","236")

" --- Messages ---
call s:hi("ErrorMsg",     s:pink,   "", "203","")
call s:hi("WarningMsg",   s:yellow,"", "221","")
call s:hi("ModeMsg",      s:green, "", "120","")
call s:hi("MoreMsg",      s:cyan,  "", "80","")
call s:hi("Question",     s:magenta,"","135","")

" --- Popup menus ---
call s:hi("Pmenu",        s:text,    s:bg_alt, "252","234")
call s:hi("PmenuSel",     s:white,   s:selection,"255","236")
call s:hi("PmenuSbar",    "",        s:selection,"","236")
call s:hi("PmenuThumb",   "",        s:interface,"","245")

" --- Folding / Diff ---
call s:hi("Folded",       s:interface, s:bg_alt,"245","234")
call s:hi("DiffAdd",      s:green,    s:bg_alt,"120","234")
call s:hi("DiffChange",   s:yellow,   s:bg_alt,"221","234")
call s:hi("DiffDelete",   s:pink,     s:bg_alt,"203","234")
call s:hi("DiffText",     s:magenta,  s:bg_alt,"135","234")

" --- Spell checking (no Badspell) ---
"call s:hi("SpellCap",     s:yellow,"","221","")
"call s:hi("SpellLocal",   s:cyan,"","80","")
"call s:hi("SpellRare",    s:magenta,"","135","")

" --- Syntax highlighting ---
call s:hi("Comment",      s:comment,"","240","")
call s:hi("String",       s:green,"","120","")
call s:hi("Character",    s:green,"","120","")
call s:hi("Number",       s:magenta,"","135","")
call s:hi("Boolean",      s:magenta,"","135","")
call s:hi("Float",        s:magenta,"","135","")
call s:hi("Identifier",   s:cyan,"","80","")
call s:hi("Function",     s:magenta,"","135","")
call s:hi("Statement",    s:purple,"","90","")
call s:hi("Conditional",  s:purple,"","90","")
call s:hi("Repeat",       s:purple,"","90","")
call s:hi("Label",        s:pink,"","203","")
call s:hi("Operator",     s:white,"","252","")
call s:hi("Keyword",      s:pink,"","203","")
call s:hi("Exception",    s:pink,"","203","")
call s:hi("PreProc",      s:yellow,"","221","")
call s:hi("Include",      s:magenta,"","135","")
call s:hi("Define",       s:magenta,"","135","")
call s:hi("Macro",        s:magenta,"","135","")
call s:hi("PreCondit",    s:yellow,"","221","")
call s:hi("Type",         s:yellow,"","221","")
call s:hi("StorageClass", s:pink,"","203","")
call s:hi("Structure",    s:cyan,"","80","")
call s:hi("Typedef",      s:cyan,"","80","")
call s:hi("Special",      s:pink,"","203","")
call s:hi("SpecialChar",  s:pink,"","203","")
call s:hi("Tag",          s:cyan,"","80","")
call s:hi("Delimiter",    s:interface,"","245","")
call s:hi("SpecialComment",s:interface,"","245","")
call s:hi("Debug",        s:pink,"","203","")
call s:hi("Error",        s:white,s:pink,"255","218")
call s:hi("Todo",         s:bg,s:yellow,"233","221")

" --- Directory / :Ex ---
call s:hi("Directory", s:cyan,"","80","")

" --- Non-GUI terminals ---
if !has("gui_running")
  call s:hi("Normal",    "", "", "249","234")
  call s:hi("NonText",   "", "", "240","")
  call s:hi("Directory", s:cyan,"","80","")
  call s:hi("Title",     s:cyan,"","80","")
endif


call s:hi("ColorColumn", "", s:bg_alt,"","235")
call s:hi("WildMenu",    s:pink, s:selection,"218","236")
call s:hi("User1",       s:green, s:bg_alt,"120","234")
call s:hi("User2",       s:pink, s:bg_alt,"203","234")
call s:hi("User3",       s:cyan, s:bg_alt,"80","234")
