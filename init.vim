call plug#begin(stdpath('config').'/plugged')

Plug 'https://github.com/kingofctrl/vim.cpp'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/sudar/comments.vim'
Plug 'https://github.com/joshdick/onedark.vim'
Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/gosukiwi/vim-zensnippets'
Plug 'https://github.com/kyazdani42/nvim-web-devicons'
Plug 'https://github.com/romgrk/barbar.nvim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/cossonleo/neo-smooth-scroll.nvim'

call plug#end()


syntax enable
set background=dark
colorscheme onedark
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set clipboard+=unnamedplus
set hidden
set number
set cursorline
set showcmd 
set showmatch 
set laststatus=2 
set nobackup
set noswapfile
set incsearch
set hlsearch
set ignorecase
set smartcase


set fillchars=eob:\ , " remove tilde ~ in every single line
set guicursor=n-v-c:block
set guicursor=i:hor20

set splitbelow
set splitright

augroup compileandrun
    autocmd!
	autocmd filetype cpp nnoremap <f5> :w <cr> :vnew <bar> :te run % <cr>
    autocmd filetype cpp nnoremap <f6> :vnew <bar> :te %.exe <cr>

augroup END


hi LineNr guibg=#37395c guifg=#5bbff5


set mouse+=a

" Move to previous/next
nnoremap <silent>    <C-S-tab> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <C-tab> <Cmd>BufferNext<CR>

" Re-order to previous/next
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>
" Close buffer
nnoremap <silent>    <C-w> <Cmd>BufferClose<CR>

nnoremap <silent>n :NERDTreeFocus<CR>
nnoremap <C-S-e> :NERDTree<CR>
nnoremap <C-S-t> :NERDTreeToggle<CR>
nnoremap <C-S-F> :NERDTreeFind<CR>


nnoremap <silent>ff <cmd>:Telescope find_files<cr>
nnoremap <silent>fg <cmd>:Telescope live_grep<cr>
nnoremap <silent>fb <cmd>:Telescope buffers<cr>
nnoremap <silent>fh <cmd>:Telescope help_tags<cr>


let g:comments_map_keys = 0

noremap  <silent> <C-/> :call CommentLine()<CR>
vnoremap <silent> <C-/> :call RangeCommentLine()<CR>
noremap  <silent> <A-/> :call UnCommentLine()<CR>
vnoremap <silent> <A-/> :call RangeUnCommentLine()<CR>


let g:zensnippets_disable_default_mappings = 1
imap <silent><expr> <C-S-E> zensnippets#expand()

nnoremap <C-V> p
vnoremap <C-V> p
nnoremap <C-C> yy
vnoremap <C-C> y
nnoremap dd "_dd
vnoremap d "_dd
nnoremap <C-A> ggVG
nnoremap <silent> <C-N> :tabnew in <cr>


" Color pallet
" Green  - #2BBB4F (BG) - #080808 (FG)
" Blue   - #4799EB
" Violet - #986FEC 
" Yellow - #D7A542
" Orange - #EB754D
" Grey1  - #202020
" Grey   - #303030

" Difeine color variables
let g:StslineColorGreen  = "#2BBB4F"
let g:StslineColorBlue   = "#4799EB"
let g:StslineColorViolet = "#986FEC"
let g:StslineColorYellow = "#D7A542"
let g:StslineColorOrange = "#EB754D"

let g:StslineColorLight  = "#C0C0C0"
let g:StslineColorDark   = "#080808"
let g:StslineColorDark1  = "#181818"
let g:StslineColorDark2  = "#202020"
let g:StslineColorDark3  = "#303030"


" Define colors
let g:StslineBackColor   = g:StslineColorDark2
let g:StslineOnBackColor = g:StslineColorLight
"let g:StslinePriColor   = g:StslineColorGreen
let g:StslineOnPriColor  = g:StslineColorDark
let g:StslineSecColor    = g:StslineColorDark3
let g:StslineOnSecColor  = g:StslineColorLight


" Crete highlight groups
execute 'highlight StslineSecColorFG guifg=' . g:StslineSecColor   ' guibg=' . g:StslineBackColor
execute 'highlight StslineSecColorBG guifg=' . g:StslineColorLight ' guibg=' . g:StslineSecColor
execute 'highlight StslineBackColorBG guifg=' . g:StslineColorLight ' guibg=' . g:StslineBackColor
execute 'highlight StslineBackColorFGSecColorBG guifg=' . g:StslineBackColor ' guibg=' . g:StslineSecColor
execute 'highlight StslineSecColorFGBackColorBG guifg=' . g:StslineSecColor ' guibg=' . g:StslineBackColor
execute 'highlight StslineModColorFG guifg=' . g:StslineColorYellow ' guibg=' . g:StslineBackColor


set laststatus=2

" Define active statusline

function! ActivateStatusline()
setlocal statusline=%#StslinePriColorBG#\ %{StslineMode()}%#StslineSecColorBG#%{get(b:,'coc_git_status',b:gitbranch)}%{get(b:,'coc_git_blame','')}%#StslineBackColorFGPriColorBG#%#StslinePriColorFG#\ %{&readonly?\"\ \":\"\"}%F\ %#StslineModColorFG#%{&modified?\"\ \":\"\"}%=%#StslinePriColorFG#\ %{&filetype!=''?'\ ':''}%{&filetype}\ %#StslineSecColorFG#%#StslineSecColorBG#%{&fenc!='utf-8'?\"\ \":''}%{&fenc!='utf-8'?&fenc:''}%{&fenc!='utf-8'?\"\ \":''}%#StslinePriColorFGSecColorBG#%#StslinePriColorBG#\ %p\%%\ %#StslinePriColorBGBold#%l%#StslinePriColorBG#/%L\ :%c\ 
endfunction

" Define Inactive statusline

function! DeactivateStatusline()

if !exists("b:gitbranch") || b:gitbranch == ''
setlocal statusline=%#StslineSecColorBG#\ INACTIVE\ %#StslineSecColorBG#%{get(b:,'coc_git_statusline',b:gitbranch)}%{get(b:,'coc_git_blame','')}%#StslineBackColorFGSecColorBG#%#StslineBackColorBG#\ %{&readonly?\"\ \":\"\"}%F\ %#StslineModColorFG#%{&modified?\"\ \":\"\"}%=%#StslineBackColorBG#\ %{&filetype!=''?'\ ':''}%{&filetype}\ %#StslineSecColorFGBackColorBG#%#StslineSecColorBG#\ %p\%%\ %l/%L\ :%c\ 

else
setlocal statusline=%#StslineSecColorBG#%{get(b:,'coc_git_statusline',b:gitbranch)}%{get(b:,'coc_git_blame','')}%#StslineBackColorFGSecColorBG#%#StslineBackColorBG#\ %{&readonly?\"\ \":\"\"}%F\ %#StslineModColorFG#%{&modified?\"\ \":\"\"}%=%#StslineBackColorBG#\ %{&filetype!=''?'\ ':''}%{&filetype}\ %#StslineSecColorFGBackColorBG#%#StslineSecColorBG#\ %p\%%\ %l/%L\ :%c\ 
endif

endfunction

" Get Statusline mode & also set primary color for that that mode
function! StslineMode()

    let l:CurrentMode=mode()

    if l:CurrentMode==#"n"
        let g:StslinePriColor     = g:StslineColorGreen
        let b:CurrentMode = "NORMAL "

    elseif l:CurrentMode==#"i"
        let g:StslinePriColor     = g:StslineColorViolet
        let b:CurrentMode = "INSERT "

    elseif l:CurrentMode==#"c"
        let g:StslinePriColor     = g:StslineColorYellow

        let b:CurrentMode = "COMMAND "

    elseif l:CurrentMode==#"v"
        let g:StslinePriColor     = g:StslineColorBlue
        let b:CurrentMode = "VISUAL "

    elseif l:CurrentMode==#"V"
        let g:StslinePriColor     = g:StslineColorBlue
        let b:CurrentMode = "V-LINE "

    elseif l:CurrentMode==#"\<C-v>"
        let g:StslinePriColor     = g:StslineColorBlue
        let b:CurrentMode = "V-BLOCK "

    elseif l:CurrentMode==#"R"
        let g:StslinePriColor     = g:StslineColorViolet
        let b:CurrentMode = "REPLACE "

    elseif l:CurrentMode==#"s"
        let g:StslinePriColor     = g:StslineColorBlue
        let b:CurrentMode = "SELECT "

    elseif l:CurrentMode==#"t"
        let g:StslinePriColor     =g:StslineColorYellow
        let b:CurrentMode = "TERM "

    elseif l:CurrentMode==#"!"
        let g:StslinePriColor     = g:StslineColorYellow
        let b:CurrentMode = "SHELL "

    endif


    call UpdateStslineColors()

    if expand('%:y') == 'help'
        let b:CurrentMode = 'HELP'
    endif
    
    return b:CurrentMode

endfunction



" Update colors. Recreate highlight groups with new Primary color value.
function! UpdateStslineColors()

execute 'highlight StslinePriColorBG           guifg=' . g:StslineOnPriColor ' guibg=' . g:StslinePriColor
execute 'highlight StslinePriColorBGBold       guifg=' . g:StslineOnPriColor ' guibg=' . g:StslinePriColor ' gui=bold'
execute 'highlight StslinePriColorFG           guifg=' . g:StslinePriColor   ' guibg=' . g:StslineBackColor
execute 'highlight StslinePriColorFGSecColorBG guifg=' . g:StslinePriColor   ' guibg=' . g:StslineSecColor
execute 'highlight StslineSecColorFGPriColorBG guifg=' . g:StslineSecColor   ' guibg=' . g:StslinePriColor

if !exists("b:gitbranch") || b:gitbranch == ''
execute 'highlight StslineBackColorFGPriColorBG guifg=' . g:StslineBackColor ' guibg=' . g:StslinePriColor
endif

endfunction


" Get git branch name

function! GetGitBranch()
let b:gitbranch=""
try
    let l:dir=expand('%:p:h')
    let l:gitrevparse = system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")
    if !v:shell_error
        let b:gitbranch="   ".substitute(l:gitrevparse, '\n', '', 'g')." "
        execute 'highlight StslineBackColorFGPriColorBG guifg=' . g:StslineBackColor ' guibg=' . g:StslineSecColor
    endif
catch
endtry
endfunction


" Get git branch name after entering a buffer
augroup GetGitBranch
    autocmd!
    autocmd BufEnter * call GetGitBranch()
augroup END


" Set active / inactive statusline after entering, leaving buffer
augroup SetStslineline
    autocmd!
    autocmd BufEnter,WinEnter * call ActivateStatusline()
    autocmd BufLeave,WinLeave * call DeactivateStatusline()
augroup END
