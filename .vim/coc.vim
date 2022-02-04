"""" coc """"
inoremap <silent><expr> <c-@> coc#refresh()
inoremap <silent> <C-e> <C-r>=CocActionAsync('showSignatureHelp')<CR>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> <leader>cg <Plug>(coc-definition)
nmap <silent> <leader>cs <Plug>(coc-references)
nmap <silent> <Leader>cc :call CocActionAsync('showIncomingCalls')<CR>
nmap <leader>cr <Plug>(coc-rename)
nnoremap <silent> <leader>ch :call CocActionAsync('doHover')<CR>
nnoremap <silent> <leader>cdt :call CocActionAsync('diagnosticToggle')<CR>
nnoremap <silent> <leader>cdr :call CocActionAsync('diagnosticRefresh')<CR>
nnoremap <silent><nowait> <leader>cs  :<C-u>CocList --input=<C-r><C-w> -I symbols<cr>
nnoremap <silent><nowait> <leader>co  :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <leader>cj  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <leader>ck  :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <leader>cm  :<C-u>CocListResume<CR>

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')


