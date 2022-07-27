:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set completeopt-=preview
set termguicolors
filetype plugin on

lua << EOF
require("bufferline").setup{
	options = {
		separator_style = "slant"
	}
}
require("startup").setup()
require("telescope").setup {
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"
EOF

source ~/.nvim/plugins.vim
source ~/.nvim/airline.vim

nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-d> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <C-f> :Telescope find_files<cr>
nnoremap <C-g> :Telescope live_grep<cr>
nnoremap <C-t> :NERDTreeToggle<cr>
nnoremap <C-r> :Telescope oldfiles<CR>
nnoremap <C-s> :Telescope colorscheme<CR>
nnoremap <C-l> :lua require'startup'.new_file()<cr>
nnoremap <C-h> :Telescope help_tags<CR>
nnoremap <C-q> :qa!<CR>
nnoremap <C-b> :Telescope file_browser<CR>

:colorscheme nord

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeShowHidden=1
