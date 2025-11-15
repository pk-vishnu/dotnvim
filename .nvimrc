version 6.0
let s:cpo_save=&cpo
set cpo&vim
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <C-W> u
inoremap <C-U> u
nnoremap  zz
nnoremap  <Cmd>nohlsearch|diffupdate|normal! 
nnoremap  zz
nmap  d
nnoremap  p "+p
vnoremap  p "+p
nnoremap  y "+y
vnoremap  y "+y
nnoremap  vj :split | wincmd j
nnoremap  vh :vsplit | wincmd l
nnoremap  sh :split
nnoremap  sv :vsplit
nnoremap  o o
nnoremap  q c
nnoremap  - -
nnoremap  + +
nnoremap  > >
nnoremap  < <
nnoremap  k k
nnoremap  j j
nnoremap  h h
nnoremap  bda :%bd|e#
nnoremap  bf :b 
nnoremap  bl :ls
nnoremap  bd :bd
nnoremap  e :Ex
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap <silent> <expr> @ mode() ==# 'V' ? ':normal! @'.getcharstr().'' : '@'
nnoremap H :bprevious
vnoremap J :m '>+1gv=gv
vnoremap K :m '<-2gv=gv
nnoremap L :bnext
xnoremap <silent> <expr> Q mode() ==# 'V' ? ':normal! @=reg_recorded()' : 'Q'
nnoremap Y y$
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap gd <Cmd>lua vim.lsp.buf.definition()
nnoremap gD <Cmd>lua vim.lsp.buf.declaration()
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
nnoremap <C-U> zz
nnoremap <C-D> zz
nmap <C-W><C-D> d
nnoremap <C-L> <Cmd>nohlsearch|diffupdate|normal! 
inoremap  u
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set expandtab
set guicursor=n-v-c:block
set ignorecase
set noloadplugins
set mouse=a
set packpath=/home/linuxbrew/.linuxbrew/Cellar/neovim/0.11.3/share/nvim/runtime
set runtimepath=~/.config/nvim,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/nvim-treesitter,~/.local/share/nvim/lazy/nvim-lint,~/.local/share/nvim/lazy/blink.cmp,~/.local/share/nvim/lazy/nvim-web-devicons,~/.local/share/nvim/lazy/typst-preview.nvim,~/.local/share/nvim/lazy/mason.nvim,~/.local/share/nvim/lazy/mason-lspconfig.nvim,~/.local/share/nvim/lazy/mini.nvim,~/.local/share/nvim/lazy/conform.nvim,~/.local/share/nvim/lazy/nvim-lspconfig,~/.local/share/nvim/lazy/harpoon,~/.local/share/nvim/lazy/plenary.nvim,~/.local/share/nvim/lazy/telescope.nvim,~/.local/share/nvim/lazy/catppuccin,/home/linuxbrew/.linuxbrew/Cellar/neovim/0.11.3/share/nvim/runtime,/home/linuxbrew/.linuxbrew/Cellar/neovim/0.11.3/share/nvim/runtime/pack/dist/opt/netrw,/home/linuxbrew/.linuxbrew/Cellar/neovim/0.11.3/share/nvim/runtime/pack/dist/opt/matchit,/home/linuxbrew/.linuxbrew/Cellar/neovim/0.11.3/lib/nvim,~/.local/state/nvim/lazy/readme,~/.local/share/nvim/lazy/mason-lspconfig.nvim/after,~/.local/share/nvim/lazy/catppuccin/after
set scrolloff=10
set shiftwidth=2
set smartcase
set smartindent
set statusline=%{%(nvim_get_current_win()==#g:actual_curwin\ ||\ &laststatus==3)\ ?\ v:lua.MiniStatusline.active()\ :\ v:lua.MiniStatusline.inactive()%}
set noswapfile
set tabstop=2
set termguicolors
set winborder=rounded
set window=49
" vim: set ft=vim :
