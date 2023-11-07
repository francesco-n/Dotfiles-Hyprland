"Vim non si comporta come Vi
set nocompatible

"plugin preinstallato per cercare file
filetype plugin on

"cerca i file nelle sottocartelle, più completamento con tab
set path+=**

"mostra tutte le possibilità con tab
set wildmenu

"Netrw configurazioni
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_altv = 1
"augroup ProjectDrawer
 " autocmd!
  "autocmd VimEnter * :Vexplore
"augroup END


syntax on
set number
set relativenumber

"indentazione
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4

set nobackup

set showcmd
set linebreak "non fa wrap in mezzo ad una parola

"colorscheme PaperColor

"snippets
nnoremap ,html :-1read ~/.vim/snippets/skeleton.html<CR>3jcit
nnoremap ,cmain :-1read ~/.vim/snippets/main.c<CR>4jA



" VimWiki

"syntax highlight codice in HTML
let g:vimwiki_listing_hl=1

let wiki = {}
let wiki.path = '~/vimwiki/'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}

let my_wiki = {}
let my_wiki.path = '/home/frah/unlocked/MyWiki/'
let my_wiki.path_html = '/home/frah/unlocked/MyWiki_html/'
let my_wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}

let uni = {}
let uni.path = '/home/frah/Documents/Uni/wiki/'
let uni.path_html = '/home/frah/Documents/Uni/wiki/html/'
let uni.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'c': 'c', 'bash': 'bash'}

let g:vimwiki_list = [wiki, my_wiki, uni]


" comandi personalizzati

" cifra e decifra tutto il testo, meno il titolo
command CifraWiki 3,$!gpg -ca
command DecifraWiki 3,$!gpg -d 2>/dev/null
