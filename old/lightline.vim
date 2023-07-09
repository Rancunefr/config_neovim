" --------------
" --- Configuration de la status line (lightline)
" --------------

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'branch', 'readonly', 'filename', 'modified' ] ],
      \  'right': [ [ 'lineinfo', 'charvaluehex' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype'] ]
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%B'
      \ },
  	  \ 'component_function': {
      \   'branch': 'LightlineGitBranch',
      \ },
      \ }

function! LightlineGitBranch() abort
  let blame = get(g:, 'coc_git_status', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction
