if exists('g:loaded_syntastic_javascript_esverify_checker')
  finish
endif
let g:loaded_syntastic_javascript_esverify_checker = 1

if !exists('g:syntastic_javascript_esverify_sort')
  let g:syntastic_javascript_esverify_sort = 1
endif

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_javascript_esverify_GetLocList() dict
  let makeprg = self.makeprgBuild({})
  let errorformat =
        \ '%f:%l:%c: %trror: %m,' .
        \ '%f:%l:%c: %tarning: %m,' .
        \ '%f:%l:%c: %tnfo: %m'
  let env = { 'ESVERIFY_LOG': '1' }
  return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat, 'env': env })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
      \ 'filetype': 'javascript',
      \ 'name': 'esverify' })

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set sw=4 sts=4 et fdm=marker:
