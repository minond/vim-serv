" Vim syntax file
" Language: Servfile
" Maintainer: Marcos Minond
" Latest Revision: 25 January 2018

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "servfile"

syn match servfileComment "#.*$" contains=servfileTodo
syn keyword servfileKeyword def case path
syn keyword servfileTodo contained TODO FIXME XXX NOTE

syn match servfileURL /http:\/\/localhost:\(\d\+\)/
syn match servfileURL /https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z0-9][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*/

syn region servfileDomains start="\[" end="\]" fold transparent contains=servfileDomain
syn match servfileDomain /\w\+/ contained
syn match servfileDomain /\w\+\.\w\+/ contained
syn match servfileDomain /\w\+\.\w\+\.\w\+/ contained

hi def link servfileTodo        Todo
hi def link servfileComment     Comment
hi def link servfileKeyword     PreProc
hi def link servfileURL         String
hi def link servfileDomain      String
