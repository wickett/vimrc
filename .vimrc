set nocompatible              " Use vim defaults
"set ls=2                      " Always show status line
set showcmd                   " Show incomplete commands
set scrolloff=3               " Keep 3 lines when scrolling
set ruler                     " Show the cursor position all the time
set title                     " Show title in console title bar
set hid                       " Change buffer without saving
set showmatch                 " Show matching bracets
 
set ts=2                      " Numbers of spaces of tab character
set sw=2                      " Numbers of spaces to (auto)indent
set et                        " Tabs are converted to spaces, use only when required
set sts=2                     " Soft tab stop
set smartindent               " Smart indent
set autoindent
set nocindent
set wrap
 
set hlsearch                  " Highlight searches
set incsearch                 " Do incremental searching
 
if has("autocmd")
"au FileType cpp,c,java,sh,pl,php,python,ruby set autoindent
"au FileType cpp,c,java,sh,pl,php,py,rb set smartindent
" PYTHON
au FileType cpp,c,java,sh,pl,php set cindent
au BufRead *.py set cinwords=if,elif,else,for,while,try,except,finally,def,class
au BufRead *.py set makeprg=python\ % 
au BufRead *.py set autowrite 
au BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
" RUBY
au BufRead *.rb set cinwords=if,elsif,else,unless,for,while,begin,rescue,def,class,module,require_relative
au BufRead *.rb set makeprg=ruby\ % 
au BufRead *.rb set autowrite 
au BufRead *.rb set smartindent cinwords=if,elsif,else,unless,for,while,begin,rescue,def,class,module
" RSPEC
au BufRead *_spec.rb set cinwords=if,elsif,else,unless,for,while,begin,rescue,def,class,module,require_relative
au BufRead *_spec.rb set makeprg=rspec\ -c\ % 
au BufRead *_spec.rb set autowrite 
au BufRead *_spec.rb set smartindent cinwords=if,elsif,else,unless,for,while,begin,rescue,def,class,module
endif
 
syntax on
"set background=dark
"hi Normal ctermfg=grey ctermbg=darkgrey
hi PreProc ctermfg=magenta
hi Statement ctermfg=darkYellow
hi Type ctermfg=blue
hi Function ctermfg=blue
hi Identifier ctermfg=darkBlue
hi Special ctermfg=darkCyan
hi Constant ctermfg=darkCyan
hi Comment ctermfg=darkGreen
au BufRead,BufNewFile *.rb hi rubySymbol ctermfg=green
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function
