set tabstop=4
set shiftwidth=4
set expandtab

let b:ale_linters = {
\   'typescript': ['tsserver'],
\}
let b:ale_fixers = ['eslint']
let b:ale_fix_on_save = 1
