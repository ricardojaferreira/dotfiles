" ensure vim-plug is installed and then load it
call functions#PlugLoad()
call plug#begin('~/.config/nvim/plugged')

" General {{{
    " Abbreviations
    abbr funciton function
    abbr teh the
    abbr tempalte template
    abbr fitler filter
    abbr cosnt const
    abbr attribtue attribute
    abbr attribuet attribute

    set autoread " detect when a file is changed

    " set history=1000 " change history to 1000
    " set textwidth=120

    " set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
    " set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

    " if (has('nvim'))
    "    " show results of substition as they're happening
    "    " but don't open a split
    "    set inccommand=nosplit
    " endif

    set backspace=indent,eol,start " make backspace behave in a sane manner
    set clipboard=unnamed

    if has('mouse')
        set mouse=a
    endif

	" Tabs = 4 spaces
	filetype plugin indent on
	set tabstop=4
	" when indenting with > use 4 spaces
	set shiftwidth=4
	" On pressing tab, insert 4 spaces
	set expandtab

    " Searching
    " set ignorecase " case insensitive searching
    " set smartcase " case-sensitive if expresson contains a capital letter
    set hlsearch " highlight search results
    set incsearch " set incremental search, like modern browsers
    set nolazyredraw " don't redraw while executing macros

    " set magic " Set magic on, for regex

    " error bells
    set noerrorbells
    set visualbell
    set t_vb=
    set tm=500
" }}}

" Appearance {{{
    set number " show line numbers
    " set wrap " turn on line wrapping
    " set wrapmargin=8 " wrap lines when coming within n characters from side
    " set linebreak " set soft wrapping
    " set showbreak=… " show ellipsis at breaking
    set autoindent " automatically set indent of new line
    set ttyfast " faster redrawing
    set diffopt+=vertical,iwhite,internal,algorithm:patience,hiddenoff
    set laststatus=2 " show the status line all the time
    " set so=7 " set 7 lines to the cursors - when moving vertical
    set wildmenu " enhanced command line completion
    " set hidden " current buffer can be put into background
    " set showcmd " show incomplete commands
    " set noshowmode " don't show which mode disabled for PowerLine
    " set wildmode=list:longest " complete files like a shell
    set shell=$SHELL
    " set cmdheight=1 " command bar height
    set title " set terminal title
    set showmatch " show matching braces
    set mat=2 " how many tenths of a second to blink
    set updatetime=300
    " set signcolumn=yes
    " set shortmess+=c

    " Tab control
    set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
    set tabstop=4 " the visible width of tabs
    set softtabstop=4 " edit as if the tabs are 4 characters wide
    set shiftwidth=4 " number of spaces to use for indent and unindent
    set shiftround " round indent to a multiple of 'shiftwidth'

    " code folding settings
    " set foldmethod=syntax " fold based on indent
    " set foldlevelstart=99
    " set foldnestmax=10 " deepest fold is 10 levels
    " set nofoldenable " don't fold by default
    " set foldlevel=1

    " toggle invisible characters
    set list
    set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
    set showbreak=↪

    " set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
    " switch cursor to line when in insert mode, and block when not
    " set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
    " \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
    " \,sm:block-blinkwait175-blinkoff150-blinkon175

    "Set colorscheme
    " Available color schemes availabe on colors subdiretory of vim
    " /usr/share/vim/vim72/colors (this may vary)
    " blue.vim
    " darkblue.vim
    " default.vim
    " delek.vim
    " desert.vim
    " elflord.vim
    " evening.vim
    " koehler.vim
    " morning.vim
    " murphy.vim
    " pablo.vim
    " peachpuff.vim
    " ron.vim
    " shine.vim
    " slate.vim
    " torte.vim
    " zellner.vim
    colorscheme delek

" }}}

" General Mappings {{{
    " set a map leader for more key combos
    let mapleader = ','

    " remap esc
    inoremap jk <esc>

    " shortcut to save
    nmap <leader>, :w<cr>

    " set paste toggle
    set pastetoggle=<leader>v

    " duplicate lines
    noremap <leader>d <ESC>Vyp
    inoremap <leader>d <ESC><ESC>Vypi

    " add quotes to word
    vnoremap q" s""<ESC>P
    vnoremap q' s''<ESC>P

    " add parentesis around
    vnoremap q( s()<ESC>P
    vnoremap q[ s[]<ESC>P
    
    " Select All
    noremap <leader>a <ESC>ggVG

    " Delete without cut 
    nnoremap <leader>x "_d
    
    " Disable stupid backup and swap files - they trigger too many events
    " for file system watchers
    set nobackup
    set nowritebackup
    set noswapfile

    " COPY
    noremap <Leader>y "*y
    noremap <Leader>p "*p
    noremap <Leader>Y "+y
    noremap <Leader>P "+p
    
    " edit ~/.config/nvim/init.vim
    map <leader>ev :e! ~/.config/nvim/init.vim<cr>
    " edit gitconfig
    map <leader>eg :e! ~/.gitconfig<cr>

    " clear highlighted search
    noremap <space> :set hlsearch! hlsearch?<cr>

    " activate spell-checking alternatives
    nmap ;s :set invspell spelllang=en<cr>

    " keep visual selection when indenting/outdenting
    vmap < <gv
    vmap > >gv

    " switch between current and last buffer
    nmap <leader>. <c-^>

    " enable . command in visual mode
    vnoremap . :normal .<cr>

    map <silent> <C-h> <Plug>WinMoveLeft
    map <silent> <C-j> <Plug>WinMoveDown
    map <silent> <C-k> <Plug>WinMoveUp
    map <silent> <C-l> <Plug>WinMoveRight

    nmap <leader>z <Plug>Zoom

    map <leader>wc :wincmd q<cr>

    " move line mappings
    " ∆ is <A-j> on macOS
    " ˚ is <A-k> on macOS
    nnoremap ∆ :m .+1<cr>==
    nnoremap ˚ :m .-2<cr>==
    inoremap ∆ <Esc>:m .+1<cr>==gi
    inoremap ˚ <Esc>:m .-2<cr>==gi
    vnoremap ∆ :m '>+1<cr>gv=gv
    vnoremap ˚ :m '<-2<cr>gv=gv

    vnoremap $( <esc>`>a)<esc>`<i(<esc>
    vnoremap $[ <esc>`>a]<esc>`<i[<esc>
    vnoremap ${ <esc>`>a}<esc>`<i{<esc>
    vnoremap $" <esc>`>a"<esc>`<i"<esc>
    vnoremap $' <esc>`>a'<esc>`<i'<esc>
    vnoremap $\ <esc>`>o*/<esc>`<O/*<esc>
    vnoremap $< <esc>`>a><esc>`<i<<esc>

    " toggle cursor line
    nnoremap <leader>i :set cursorline!<cr>

    " scroll the viewport faster
    nnoremap <C-e> 3<C-e>
    nnoremap <C-y> 3<C-y>

    " moving up and down work as you would expect
    nnoremap <silent> j gj
    nnoremap <silent> k gk
    nnoremap <silent> ^ g^
    nnoremap <silent> $ g$

    " inner-line
    xnoremap <silent> il :<c-u>normal! g_v^<cr>
    onoremap <silent> il :<c-u>normal! g_v^<cr>

    " around line
    vnoremap <silent> al :<c-u>normal! $v0<cr>
    onoremap <silent> al :<c-u>normal! $v0<cr>

	" Pane moving like tmux
	nmap <C-S-h> <C-w>h
	nmap <C-S-j> <C-w>j
	nmap <C-S-k> <C-w>k
	nmap <C-S-l> <C-w>l

	" Split panes like tmux
	nmap <C-w>e <C-w>v
	nmap <C-w>o <C-w>S

	" Resize Splits
	nmap <C-Left> <C-w>>
	nmap <C-Right> <C-w><
	nmap <C-Down> <C-w>+
	nmap <C-Up> <C-w>-
" }}}

" General Functionality {{{
	" Airline {{{
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		
		" use powerline fonts
		let g:airline_powerline_fonts = 1

		" enable vimdevicons
		let g:webdevicons_enable_airline_statusline = 1

		" Theme
		let g:airline_theme='minimalist'
		" air-line
		let g:airline_powerline_fonts = 1

		if !exists('g:airline_symbols')
			let g:airline_symbols = {}
		endif

		" unicode symbols
		let g:airline_left_sep = '»'
		let g:airline_left_sep = '▶'
		let g:airline_right_sep = '«'
		let g:airline_right_sep = '◀'
		let g:airline_symbols.linenr = '␊'
		let g:airline_symbols.linenr = '␤'
		let g:airline_symbols.linenr = '¶'
		let g:airline_symbols.branch = '⎇'
		let g:airline_symbols.paste = 'ρ'
		let g:airline_symbols.paste = 'Þ'
		let g:airline_symbols.paste = '∥'
		let g:airline_symbols.whitespace = 'Ξ'

		" airline symbols
		let g:airline_left_sep = ''
		let g:airline_left_alt_sep = ''
		let g:airline_right_sep = ''
		let g:airline_right_alt_sep = ''
		let g:airline_symbols.branch = ''
		let g:airline_symbols.readonly = ''
		let g:airline_symbols.linenr = ''

		" Add buffers to top
		let g:airline#extensions#tabline#enabled = 1
		let g:airline#extensions#tabline#buffer_nr_show = 1
		
		let g:airline_skip_empty_sections = 1

		" configure sections
		" let g:airline_section_x = ''
		" let g:airline_section_y = '%{&fileencoding?&fileencoding:&encoding}'

		" Extensions disable
		let g:airline#extensions#keymap#enabled = 0
		let g:airline#extensions#netrw#enabled = 0
		let g:airline#extensions#quickfix#enabled = 0
		let g:airline#extensions#term#enabled = 0
		let g:airline#extensions#vimtex#enabled = 0
		let g:airline#extensions#vista#enabled = 0
		let g:airline#extensions#whitespace#enabled = 0
		let g:airline#extensions#wordcount#enabled = 0
	

	" }}}
	
    " NERDTree {{{
        Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
        Plug 'Xuyuanp/nerdtree-git-plugin'
        Plug 'ryanoasis/vim-devicons'
        Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
		let g:webdevicons_enabled_nerdtree = 1
        let g:WebDevIconsOS = 'Darwin'
        let g:WebDevIconsUnicodeDecorateFolderNodes = 1
        let g:DevIconsEnableFoldersOpenClose = 1
        let g:DevIconsEnableFolderExtensionPatternMatching = 1
        let NERDTreeDirArrowExpandable = "\u00a0" " make arrows invisible
        let NERDTreeDirArrowCollapsible = "\u00a0" " make arrows invisible
        let NERDTreeNodeDelimiter = "\u263a" " smiley face

        augroup nerdtree
            autocmd!
            autocmd FileType nerdtree setlocal nolist " turn off whitespace characters
            autocmd FileType nerdtree setlocal nocursorline " turn off line highlighting for performance
        augroup END

        " Toggle NERDTree
        function! ToggleNerdTree()
            if @% != "" && @% !~ "Startify" && (!exists("g:NERDTree") || (g:NERDTree.ExistsForTab() && !g:NERDTree.IsOpen()))
                :NERDTreeFind
            else
                :NERDTreeToggle
            endif
        endfunction
        " toggle nerd tree
        nmap <silent> <leader>k :call ToggleNerdTree()<cr>
        " find the current file in nerdtree without needing to reload the drawer
        nmap <silent> <leader>y :NERDTreeFind<cr>

        let NERDTreeShowHidden=1
        let NERDTreeDirArrowExpandable = '▷'
        let NERDTreeDirArrowCollapsible = '▼'
        let g:NERDTreeIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ 'Ignored'   : '☒',
        \ "Unknown"   : "?"
        \ }
    " }}}

    " FZF {{{
        Plug '/usr/local/opt/fzf'
        Plug 'junegunn/fzf.vim'
        let g:fzf_layout = { 'down': '~25%' }

        if isdirectory(".git")
            " if in a git project, use :GFiles
            nmap <silent> <leader>t :GitFiles --cached --others --exclude-standard<cr>
        else
            " otherwise, use :FZF
            nmap <silent> <leader>t :FZF<cr>
        endif

        nmap <silent> <leader>s :GFiles?<cr>

        nmap <silent> <leader>r :Buffers<cr>
        nmap <silent> <leader>e :FZF<cr>
        nmap <leader><tab> <plug>(fzf-maps-n)
        xmap <leader><tab> <plug>(fzf-maps-x)
        omap <leader><tab> <plug>(fzf-maps-o)

        " Insert mode completion
        imap <c-x><c-k> <plug>(fzf-complete-word)
        imap <c-x><c-f> <plug>(fzf-complete-path)
        imap <c-x><c-j> <plug>(fzf-complete-file-ag)
        imap <c-x><c-l> <plug>(fzf-complete-line)

        nnoremap <silent> <Leader>C :call fzf#run({
        \   'source':
        \     map(split(globpath(&rtp, "colors/*.vim"), "\n"),
        \         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
        \   'sink':    'colo',
        \   'options': '+m',
        \   'left':    30
        \ })<CR>

        command! FZFMru call fzf#run({
        \  'source':  v:oldfiles,
        \  'sink':    'e',
        \  'options': '-m -x +s',
        \  'down':    '40%'})

        command! -bang -nargs=* Find call fzf#vim#grep(
            \ 'rg --column --line-number --no-heading --follow --color=always '.<q-args>, 1,
            \ <bang>0 ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'), <bang>0)
        command! -bang -nargs=? -complete=dir Files
            \ call fzf#vim#files(<q-args>, fzf#vim#with_preview('right:50%', '?'), <bang>0)
        command! -bang -nargs=? -complete=dir GitFiles
            \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview('right:50%', '?'), <bang>0)
    " }}}
    " Latex plugins {{{{
        Plug 'lervag/vimtex'
        Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

        noremap <silent> <Leader>c :VimtexCompile<CR>
        noremap <silent> <Leader>cc :VimtexClean<CR>
        noremap <silent> <Leader>ll :LLPStartPreview<CR>
        noremap <silent> <Leader>le :VimtexErrors<CR>
	" }}}
" }}}

" Language-Specific Configuration {{{
        Plug 'vim-ruby/vim-ruby'
" }}}

call plug#end()

" Colorscheme and final setup {{{
    syntax on
    filetype plugin indent on
" }}}

" vim:set foldmethod=marker foldlevel=0

