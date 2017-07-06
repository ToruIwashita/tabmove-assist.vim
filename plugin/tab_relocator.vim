" File: plugin/tab_relocator.vim
" Author: ToruIwashita <toru.iwashita@gmail.com>
" License: MIT License

if exists('g:loaded_tab_relocator')
  finish
endif
let g:loaded_tab_relocator = 1

let s:cpo_save = &cpo
set cpo&vim

command! TabShift call tab_relocator#shift()
command! -nargs=1 TabMove call tab_relocator#move(<args>)

let &cpo = s:cpo_save
unlet s:cpo_save