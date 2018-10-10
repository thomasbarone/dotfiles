"
"
" .vimrc - Thomas Barone
"
"
"-----------------------------------------------------------------------------


"***********************************************************************
"                               vundle
"***********************************************************************
syntax on
set clipboard=unnamed
set number
set tabstop=4 shiftwidth=4 expandtab
set nocompatible
filetype off
set t_Co=256
set exrc

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" plugins

    Bundle 'gmarik/vundle'
    Bundle 'Valloric/YouCompleteMe'
    Bundle 'wikitopian/hardmode'
    Bundle 'vim-latex/vim-latex'
    Bundle 'scrooloose/nerdtree'
    Bundle 'easymotion/vim-easymotion'
    "Bundle 'scrooloose/syntastic'
    Bundle 'scrooloose/nerdcommenter'
    Bundle 'aperezdc/vim-template'
    Bundle 'xolox/vim-session'
    Bundle 'xolox/vim-misc'
    Bundle 'ctrlpvim/ctrlp.vim'
    "Bundle 'tpope/vim-vinegar'
    Bundle 'tpope/vim-unimpaired'
    Bundle 'vim-airline/vim-airline'
    Bundle 'vim-airline/vim-airline-themes'
    Bundle 'SirVer/ultisnips'
    "Bundle 'lervag/vimtex'
    Bundle 'editorconfig/editorconfig-vim'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-fugitive'
    Bundle 'tpope/vim-rhubarb'
    Bundle 'tpope/vim-dispatch'
    Bundle 'ron89/thesaurus_query.vim'
    Bundle 'wkentaro/conque.vim'


filetype plugin indent on
"***********************************************************************




"***********************************************************************
"                               remaps
"***********************************************************************
inoremap jk <esc>
vnoremap jk <esc>
noremap j gj
noremap k gk
nnoremap <C-S> :w<Enter>
inoremap <C-s> <Esc>:w<Enter>li
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
map <D-i> <A-i>
"***********************************************************************




"***********************************************************************
"                              leaders
"***********************************************************************
let mapleader = "\<Space>"
nmap <Leader>v :source $MYVIMRC <Enter>
nmap <Leader>V :tabedit $MYVIMRC
nmap <Leader>s :w<Enter>
map <Leader>w <Plug>(easymotion-w)
map <Leader>e <Plug>(easymotion-b)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
nmap <Leader>q :bd
nmap <Leader>n :set rnu! <Enter>
vnoremap <Leader>n :set rnu! <Enter>
nmap <Leader>tt :NERDTreeToggle <Enter>
nnoremap <Leader>th :ThesaurusQueryReplaceCurrentWord<CR>

nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>git :Git<Space>

map <Leader>mk :make<cr>
map <Leader>mc :make clean<cr>
map <Leader>fo :cw 15<Enter>
map <Leader>fq :ccl<Enter>
map <Leader>rr @

"eclim 

"run eclim daemon
map <Leader>dr :Dispatch! /Applications/Eclipse.app/Contents/Eclipse/eclimd<CR>
"stop eclim daemon
map <Leader>ds :ShutdownEclim<CR>

"***********************************************************************



"***********************************************************************
"                              syntastic
"***********************************************************************
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"***********************************************************************




"***********************************************************************
"                           general settings
"***********************************************************************
set hidden
set wildmenu
set showcmd
set number
colo solarized
set background=dark
set macmeta
"set dictionary
set splitbelow
"***********************************************************************





"***********************************************************************
"                             vim-latex
"***********************************************************************
filetype plugin on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
imap <D-b> <Plug>Tex_MathBF	
imap <D-c> <Plug>Tex_MathCal
imap <D-l> <Plug>Tex_LeftRight
imap <D-i> <Plug>Tex_InsertItemOnThisLine

" F5 environment mappings
map <D-I> <F5>
imap <D-I> <F5>
map <D-O> <S-F5>
imap <D-O> <S-F5>

" F7 command mappings
map <D-J> <F7>
imap <D-J> <F7>
map <D-K> <S-F7>
imap <D-K> <S-F7>

"http://stackoverflow.com/questions/12650528/viewing-pdfs-with-vim-latex-suite-start-preview-shell-returned-127
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf,bibtex,pdf'
let g:Tex_TreatMacViewerAsUNIX = 1
let g:Tex_ExecuteUNIXViewerInForeground = 1
let g:Tex_ViewRule_ps = 'open -a Skim'
let g:Tex_ViewRule_pdf = 'open -a Skim'
"let g:Tex_UseMakefile = 1

"***********************************************************************



"***********************************************************************
"                             ultisnips
"***********************************************************************
Bundle 'honza/vim-snippets'


let g:UltiSnipsExpandTrigger="<c-k>"
let g:C_Ctrl_j = 'off'
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"***********************************************************************


"***********************************************************************
"                             vim-airline
"***********************************************************************
set laststatus=2
"***********************************************************************




"***********************************************************************
"                             ctrl-p
"***********************************************************************
let g:ctrlp_arg_map = 1
let g:ctrlp_working_path_mode = 'c'
"***********************************************************************



"***********************************************************************
"                           vim hardmode
"***********************************************************************
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
"***********************************************************************




"***********************************************************************
"                             easymotion
"***********************************************************************
let g:EasyMotion_do_mapping = 0
map <Leader> <Plug>(easymotion-prefix)
"***********************************************************************




"***********************************************************************
"                           YouCompleteMe
"***********************************************************************
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

let g:ycm_semantic_triggers =  { 'cpp,objcpp' : ['->', '.', '::'] }
"let g:ycm_semantic_triggers =  { 'cpp,objcpp' : ['->', '.', '::', 're!gl','re!GL'] }
let g:clang_complete_macros = 1
"let g:clang_user_options = ' -DCLANG_COMPLETE_ONLY'


"***********************************************************************




"***********************************************************************
"                            auto commands
"***********************************************************************
"autocmd Bufwritepre,filewritepre *.h execute "normal ma"
"autocmd Bufwritepre,filewritepre *.h exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
"autocmd bufwritepost,filewritepost *.h execute "normal `a"
"autocmd bufwritepost,filewritepost *.h execute "normal zz"

"autocmd Bufwritepre,filewritepre Makefile execute "normal ma"
"autocmd Bufwritepre,filewritepre Makefile exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
"autocmd bufwritepost,filewritepost Makefile execute "normal `a"
"autocmd bufwritepost,filewritepost Makefile execute "normal zz"

"autocmd Bufwritepre,filewritepre *.c execute "normal ma"
"autocmd Bufwritepre,filewritepre *.c exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
"autocmd bufwritepost,filewritepost *.c execute "normal `a"
"autocmd bufwritepost,filewritepost *.c execute "normal zz"
"***********************************************************************




"***********************************************************************
"                               NERDTree
"***********************************************************************
let NERDTreeIgnore = ['\.aux$', '\.bbl$', '\.blg$', '\.ilg$', '\.idx$', '\.gz$','\.ind$', '\.lof$', '\.log$', '\.lot$', '\.out$', '\.latexmain$', '\.toc$']
"***********************************************************************


"***********************************************************************
"                            vim-sessions
"***********************************************************************
:let g:session_autosave = 'no'
"***********************************************************************

"***********************************************************************
"                            eclimd
"***********************************************************************
let g:EclimCompletionMethod = 'omnifunc'

"***********************************************************************





"***********************************************************************
"                            vim-rhubarb
"***********************************************************************
let g:github_enterprise_urls = ['https://github.cs.adelaide.edu.au']
"***********************************************************************
