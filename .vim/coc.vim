"""" coc """"
" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent> <C-e> <C-r>=CocActionAsync('showSignatureHelp')<CR>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> <leader>cvg :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> <leader>cg <Plug>(coc-definition)
nmap <silent> <leader>cs <Plug>(coc-references)
nmap <silent> <Leader>cc :call CocAction('showIncomingCalls')<CR>
nmap <silent> <Leader>cd :call CocActionAsync('showOutgoingCalls')<CR>
nmap <leader>cr <Plug>(coc-rename)
nnoremap <silent> <leader>ch :call CocActionAsync('doHover')<CR>
nnoremap <silent> <leader>cdt :call CocActionAsync('diagnosticToggle')<CR>
nnoremap <silent> <leader>cdr :call CocActionAsync('diagnosticRefresh')<CR>
nnoremap <silent><nowait> <leader>cl  :<C-u>CocList -I symbols<cr>
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


