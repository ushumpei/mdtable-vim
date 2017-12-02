scriptencoding utf-8

function! mdtable#write(rowNum, colNum, ...) abort
  try
    let table = s:create(a:rowNum, a:colNum)
    execute "normal o" . table . "\<Esc>"
  endtry
endfunction

function! s:create(rowNum, colNum) abort
  " Guard
  " Arguments must be positive number
  if !(a:rowNum > 0) || !(a:colNum > 0)
    echoerr 'Arguments must be positive numbers.'
  endif

  " Make template strings
  let s:row = ''
  let s:separaterRow = ''
  for i in range(a:colNum)
    let s:row = s:row . '|   '
    let s:separaterRow = s:separaterRow . '|:--'
  endfor
  let s:row = s:row . "|"
  let s:separaterRow = s:separaterRow . "|"

  " Make table array and add templates
  let s:table = []
  call add(s:table, s:row)
  call add(s:table, s:separaterRow)
  for i in range(a:rowNum)
    call add(s:table, s:row)
  endfor

  " Combine all and return it
  return join(s:table, "\n")
endfunction
