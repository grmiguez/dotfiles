" REMAPS
let mapleader = "," 
nnoremap <silent> <C-h> :BufferPrevious<CR>
nnoremap <silent> <C-l> :BufferNext<CR>
nnoremap <silent> <C-q> :BufferClose<CR>
nnoremap <Leader>l :vertical resize +5<CR>
nnoremap <Leader>h :vertical resize -5<CR>
nnoremap <C-z> :undo <CR>
nnoremap <C-y> :redo <CR>
nnoremap <C-s> :w <CR>
nnoremap <leader>m :set autoindent <CR>
nnoremap <silent> nh :noh <CR>

nnoremap <silent> D "_d
xnoremap <silent> D "_d
nnoremap <silent> DD "_dd

"Terminal
nnoremap <silent>tt :ToggleTerm size=40 dir=~/ direction=float <CR>
nnoremap <silent>gt :TermExec cmd="lazygit" direction=float <CR>

"Nerd tree
nnoremap <silent><C-t> :NERDTreeToggle<CR>

"Wobiz logs
autocmd Filetype php inoremap <buffer><C-l> complex_error_log();<ESC>hi
autocmd Filetype java inoremap <buffer><C-l> System.out.println();<ESC>hi
autocmd Filetype vue inoremap <buffer><C-l> console.log();<ESC>hi

"Php doc
nmap <Leader>c :call PhpDocPasteComment()<CR>

"Close buffer 
nnoremap <C-q> :BD <CR>
nnoremap <silent><leader>ff :call PhpCsFixerFixFile()<CR>

"Dif -> soon to be deprecated
nnoremap <silent><leader>d :Gvdiffsplit <CR>

"Vertical split
nnoremap <silent> rv :vsplit <CR> 
nnoremap <silent> hv :split <CR> 

"Duplicate line
nnoremap <silent> <C-d> yyp

"Telescope remaps
nnoremap <silent> ff :Telescope find_files<CR>
nnoremap <silent> fd :Telescope find_files theme=dropdown<CR>
nnoremap <silent> fb :Telescope git_branches<CR>
nnoremap <silent> fc :Telescope git_commits<CR>
nnoremap <silent> fg :Telescope live_grep<cr>
nnoremap <silent> fs :Telescope git_stash<cr>
nnoremap <silent> fh :lua require('telescope.builtin').resume()<CR>
nnoremap <silent> gs :lua require('telescope.builtin').grep_string()<CR>
nnoremap <silent> km :lua require('telescope.builtin').keymaps()<CR>
nnoremap <silent> ht :lua require('telescope.builtin').help_tags()<CR>
nnoremap <Leader>todo :TodoTelescope<CR>

"Coc remaps
nmap <silent> ca <Plug>(coc-codeaction)
nmap <silent> qf <Plug>(coc-fix-current)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> rn <Plug>(coc-rename)
nmap <silent> ne <Plug>(coc-diagnostic-next-error)
nmap <silent> pe <Plug>(coc-diagnostic-prev-error)
nmap <silent> ge <Plug>(coc-diagnostic-info)
nnoremap <silent> gh :call <SID>show_documentation()<CR>
nnoremap <leader>r :CocRestart <CR>  

"Commentary remaps
nmap cm <Plug>CommentaryLine
xmap cm <Plug>Commentary

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"Harpoon 
nnoremap <silent> hh :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <silent> ha :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent> hr :lua require("harpoon.mark").rm_file()<CR>
nnoremap <silent> hc :lua require("harpoon.mark").clear_all()<CR>
nnoremap <silent> h1 :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <silent> h2 :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <silent> h3 :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <silent> h4 :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <silent> h5 :lua require("harpoon.ui").nav_file(5)<CR>
nnoremap <silent> h6 :lua require("harpoon.ui").nav_file(6)<CR>

"folds
nnoremap <leader>fl :set foldmethod=indent<CR>

syntax on

set guifont=Fira\ Code:h10
set noerrorbells
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set mouse=a
set hidden
set number
set relativenumber
set autoindent
set nowrap
set noswapfile
set incsearch
set clipboard+=unnamedplus

"folds
set foldlevel=1
set foldclose=all

"vimWiki settings
set nocompatible
filetype on

" PLUGINS
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'f-person/git-blame.nvim'
Plug 'itchyny/vim-gitbranch'
Plug 'adoy/vim-php-refactoring-toolbox'
Plug 'tpope/vim-commentary'
Plug 'qpkorr/vim-bufkill'
Plug 'jiangmiao/auto-pairs'
Plug 'vimwiki/vimwiki'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'fladson/vim-kitty'

"Xdebug
Plug 'vim-vdebug/vdebug'
Plug 'dbakker/vim-projectroot'
"Git
Plug 'tpope/vim-fugitive'
Plug 'chrisbra/changesPlugin'
Plug 'lewis6991/gitsigns.nvim'
Plug 'andweeb/presence.nvim'
"themes and customization
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'ayu-theme/ayu-vim' 
Plug 'gruvbox-community/gruvbox'
Plug 'projekt0n/github-nvim-theme'
Plug 'Yggdroot/indentLine'
Plug 'nvim-lualine/lualine.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'sunjon/shade.nvim'
Plug 'glepnir/dashboard-nvim'
"php doc
Plug 'mralejandro/vim-phpdoc'
"harpoon
Plug 'ThePrimeagen/harpoon'
"coc
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim' " needed for previews
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'antoinemadec/coc-fzf'

"toggle terminal in vim
Plug 'akinsho/toggleterm.nvim'
call plug#end()

let g:dashboard_default_executive = "telescope"
let g:indentLine_fileTypeExclude = ['dashboard']

let g:dashboard_custom_header = [
\ '',
\ '',
\ '',
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\'',
\'',
\]

set background=dark
set noshowmode

let g:gruvbox_contrast_dark="hard"
let g:gruvbox_transparent_bg=1

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

colorscheme gruvbox 

lua << END
require('gitsigns').setup()
require('todo-comments').setup()
END

source $HOME/.config/nvim/plug-config/coc.vim

" Carga el syntax highlight de php
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF

lua <<EOF
require'shade'.setup({
  overlay_opacity = 50,
  opacity_step = 1,
  keys = {
    brightness_up    = '<Leader>k',
    brightness_down  = '<Leader>j',
    toggle           = '<Leader>s',
  }
})
EOF

set completeopt=menu,menuone,noselect

let g:rootmakers = ['.projectroot', 'docker-compose.yml', '.git', '.hg', '.svn', '.bzr','_darcs','build.xml']

" Vdebug mappings
function! SetupDebug()
    let g:vdebug_options = {'ide_key': 'PHPSTORM'}
    let g:vdebug_options = {'break_on_open': 0}
    let g:vdebug_options = {'server': '10.101.1.100'}
    let g:vdebug_options = {'port': '9003'}
  " let g:vdebug_options['path_maps'] = {'/var/www/html/wobiz': call('projectroot#get', a:000)}
    let g:vdebug_options.path_maps = {"/var/www/html/wobiz": "home/guido/projects/wobiz"}
  " Hack to override vdebug options
  source ~/.config/nvim/plugged/vdebug/plugin/vdebug.vim
endfunction
autocmd VimEnter * :call SetupDebug()

" lualine configuration
lua <<EOF
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
EOF


