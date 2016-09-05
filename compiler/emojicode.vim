" Vim Compiler File
" Compiler:	emojicode
" Maintainer:	Tim Uruski <hello@timuruski.net>

if exists("current_compiler")
  finish
endif

let current_compiler = "emojicode"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=clear;\ (emojicodec\ \"%:t:r.emojic\"\ &&\ emojicode\ \"%:t:r\.emojib\")
" CompilerSet makeprg=echo\ \"%:t:r.emojic\"\ emojicode\ \"%:t:r\"

" 🚨 line 1 column 0 cookie_monster.emojic: Expected token Identifier but instead found Variable.
CompilerSet errorformat=🚨\ line\ %l\ column\ %c\ %f:\ %m
