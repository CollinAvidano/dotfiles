
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
" Required:
filetype indent plugin on

"*****************************************************************************
"" Vim Plugins
"*****************************************************************************

" Autoload vim-plug"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"vim-plug stuff"
"Start plugin loading and specify storage directory
" Required:
call plug#begin('~/.vim/plugged')
Plug 'doums/darcula'
Plug 'francoiscabrol/ranger.vim'
Plug 'hugolgst/vimsence'
Plug 'preservim/vimux'
Plug 'greghor/vim-pyshell'
Plug 'julienr/vim-cellmode'
call plug#end()
"*****************************************************************************
"" Visual Settings
"*****************************************************************************

" set vim colorscheme "
colorscheme darcula

" Enable syntax highlighting
syntax on

" disables all colors and syntax highlighting if used with tmux
" if (has("termguicolors"))
"     set termguicolors
" endif

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

"*****************************************************************************
"" Options
"*****************************************************************************
set hidden

set clipboard=unnamedplus

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
set autowrite

" wrap text
set wrap

" Show matching bracket
set showmatch

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd
set showmode

set matchpairs+=<:>

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Indentation
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

"------------------------------------------------------------
" Mappings {{{1
"
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

"make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

" reformats code pasted from outside of vim
" nnoremap <F2> :set invpaste paste?<CR>
" imap <F2> <C-O>:set invpaste paste?<CR>
" set pastetoggle=<F2>

" vim cell-mode parameters
let g:cellmode_use_tmux=1
let g:cellmode_tmux_panenumber=1

" ipython-shell
noremap ,ss :call StartPyShell()<CR>
noremap ,sk :call StopPyShell()<CR>

" code execution
nnoremap ,l  :call PyShellSendLine()<CR>
noremap <silent> <C-b> :call RunTmuxPythonCell(0)<CR>
noremap <C-a> :call RunTmuxPythonAllCellsAbove()<CR>

" code inspection
nnoremap ,sl :call PyShellSendKey("len(<C-R><C-W>)\r")<CR><Esc>
nnoremap ,sc :call PyShellSendKey("<C-R><C-W>.count()\r")<CR><Esc>
nnoremap ,so :call PyShellSendKey("<C-R><C-W>\r")<CR><Esc>
vnoremap ,so y:call PyShellSendKey(substitute('<C-R>0',"\"","\\\"","")."\r")<CR>

" on data frames
nnoremap ,sdh :call PyShellSendKey("<C-R><C-W>.head()\r")<CR><Esc>
nnoremap ,sdc :call PyShellSendKey("<C-R><C-W>.columns\r")<CR><Esc>
nnoremap ,sdi :call PyShellSendKey("<C-R><C-W>.info()\r")<CR><Esc>
nnoremap ,sdd :call PyShellSendKey("<C-R><C-W>.describe()\r")<CR><Esc>
nnoremap ,sdt :call PyShellSendKey("<C-R><C-W>.dtypes\r")<CR><Esc>

" plot
nnoremap ,spp :call PyShellSendKey("<C-R><C-W>.plot()\r")<CR><Esc>
nnoremap ,sph :call PyShellSendKey("<C-R><C-W>.hist()\r")<CR><Esc>
nnoremap ,spc :call PyShellSendKey("plt.close('all')\r")<CR><Esc>
