" --------------
" --- Installation du plugin manager
" --------------

set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'tpope/vim-fugitive'
call plug#end()

filetype plugin indent on

" --------------
" --- Configuration de la status line
" --------------

set cmdheight=1
set laststatus=2

" --------------
" --- Gestion des buffers 
" --------------

set hidden			" Permet de ne pas sauver pour changer de buffer

" --------------
" --- Colors 
" --------------

set t_Co=256                        " Passage en mode temrinal 256 couleurs
set background=dark			        " Choix d'un fond sombre
colorscheme blueice                 " Thème couleur
syntax enable				        " active la coloration syntaxique

" --------------
" --- Cursorline 
" --------------

set cursorline
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline

" --------------
" --- interface 
" --------------

set showcmd 				        " Affiche les commandes en cours de frappe
set backspace=indent,eol,start		" Permet d'effacer l'indentation automatique, les retours chariots et d'aller au dela de l'endroit d'activation du mode insert
set history=1000			        " Historique plus long
set wildmenu				        " Active le menu de complétion des commandes sur la touche tab
set wildmode=longest:full,full
set mouse=a				            " Support souris (scroll,selection, etc.)
set scrolloff=3				        " Affiche toujours 3 lignes pre/post curseur
set sidescrolloff=5			        " Affiche toujours 5 colonnes pre/post curseur
set autoread				        " Relit un fichier si modifié en dehors de vim
set number				            " Affiche les numéros de ligne


" --------------
" --- Reglages activés par défaut 
" --------------

set noshowmode				        " Ne pas afficher le mode (insert/visual) 
set ruler				            " Affiche la position dans le fichier en bas à droite
set title				            " Affiche le titre dans la barre du terminal

" --------------
" --- Fichiers Swap et Backup
" --- Fichiers vimrc spécifiques
" --------------

set directory=$HOME/.config/nvim/swap_files//	" Stockage des swap files 
set backupdir=$HOME/.config/nvim/backup_files// " Stockage des backups
set undodir=$HOME/.config/nvim/undodir          " Stockage des informations de undo

set nowritebackup		                " Enregistre directement dans le fichier (plutot que de passer par un fichier temporaire)
set nobackup                            " Ne pas enregistrer de fichiers backups
set undofile                            " Maintient une historique du undo entre les sessions
set exrc				                " Autorise des fichiers vimrc propres aux projets

" --------------
" --- Encodage et rendu des caractères
" --------------

set encoding=utf-8		    	" Definition du charset de travail de vim (buffer,registres,...), possible d'avoir un fichier dans un charset different avec fileencoding
set tabstop=4       			" Reduit l'affiche d'un <TAB> à 4 espaces (defaut a 8) (attention pose problèmes d'incohérences de rendu)
set shiftwidth=4    			" indente par 4 colonnes
set nowrap				        " Les lignes longues ne sont pas affichées tronquées
set linebreak				    " Ne permet la troncature de ligne que sur les caractères de 'breakat' (inutile avec nowrap)

" --------------
" --- Tricks
" --------------

runtime lightline.vim
