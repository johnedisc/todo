let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd /mnt/c/Users/chris/Documents/code/epicodus/toDoList/js
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 /mnt/c/Users/chris/Documents/code/epicodus/toDoList/js
badd +56 scripts.js
badd +2 autosave.lua
badd +1 /mnt/c/Users/chris/Documents/code/epicodus/mrRoboger/README.md
badd +59 /mnt/c/Users/chris/Documents/code/epicodus/toDoList/README.md
badd +1 /mnt/c/Users/chris/Documents/code/epicodus/addressBook/scripts.js
argglobal
%argdel
$argadd /mnt/c/Users/chris/Documents/code/epicodus/toDoList/js
edit scripts.js
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 74 + 74) / 148)
exe '2resize ' . ((&lines * 16 + 17) / 35)
exe 'vert 2resize ' . ((&columns * 73 + 74) / 148)
exe '3resize ' . ((&lines * 16 + 17) / 35)
exe 'vert 3resize ' . ((&columns * 73 + 74) / 148)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 56 - ((31 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 56
normal! 0
lcd /mnt/c/Users/chris/Documents/code/epicodus/toDoList/js
wincmd w
argglobal
enew
balt /mnt/c/Users/chris/Documents/code/epicodus/toDoList/js/scripts.js
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd /mnt/c/Users/chris/Documents/code/epicodus/toDoList/js
wincmd w
argglobal
if bufexists(fnamemodify("/mnt/c/Users/chris/Documents/code/epicodus/toDoList/README.md", ":p")) | buffer /mnt/c/Users/chris/Documents/code/epicodus/toDoList/README.md | else | edit /mnt/c/Users/chris/Documents/code/epicodus/toDoList/README.md | endif
if &buftype ==# 'terminal'
  silent file /mnt/c/Users/chris/Documents/code/epicodus/toDoList/README.md
endif
balt /mnt/c/Users/chris/Documents/code/epicodus/mrRoboger/README.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 66 - ((13 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 66
normal! 042|
lcd /mnt/c/Users/chris/Documents/code/epicodus/toDoList/js
wincmd w
exe 'vert 1resize ' . ((&columns * 74 + 74) / 148)
exe '2resize ' . ((&lines * 16 + 17) / 35)
exe 'vert 2resize ' . ((&columns * 73 + 74) / 148)
exe '3resize ' . ((&lines * 16 + 17) / 35)
exe 'vert 3resize ' . ((&columns * 73 + 74) / 148)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
