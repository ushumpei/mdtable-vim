" Vim global plugin for making markdown table text.
" Last Change: 2017 Nov.1
" Maintainer:  ushumpei <mail@ushumpei.com>
" License:     This file is placed in the public domain.

scriptencoding utf-8

if exists("g:loaded_mdtable")
  finish
endif
let g:loaded_mdtable = 1

let s:save_cpo = &cpo
set cpo&vim

if !exists(":Mdtable")
  command -nargs=* Mdtable :call mdtable#write(<f-args>)
endif

" Key map 'mdt' to ':Mdtable '
if !hasmapto('<Plug>Mdtable')
  nmap mdt <Plug>Mdtable
endif
nmap <Plug>Mdtable :Mdtable 

let &cpo = s:save_cpo
unlet s:save_cpo
