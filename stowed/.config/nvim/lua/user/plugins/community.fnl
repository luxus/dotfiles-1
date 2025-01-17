(local uu (require :user.util))

[:AstroNvim/astrocommunity
  {:import :astrocommunity.pack.go}
 ; {:import :astrocommunity.pack.julia}
 ; {:import :astrocommunity.pack.python}
 ; {:import :astrocommunity.pack.terraform}
  {:import :astrocommunity.pack.typescript-all-in-one}
  {:import :astrocommunity.pack.rust}
  {:import :astrocommunity.pack.docker}
 {:import :astrocommunity.pack.lua}
 {:import :astrocommunity.pack.markdown}
 {:import :astrocommunity.pack.bash}
 {:import :astrocommunity.pack.html-css}
 {:import :astrocommunity.pack.json}
 {:import :astrocommunity.pack.yaml}
 {:import :astrocommunity.pack.tailwindcss}
 {:import :astrocommunity.utility.noice-nvim}
 {:import :astrocommunity.motion.flash-nvim}

 {:import :astrocommunity.completion.copilot-lua}
 (uu.tx :copilot.lua {:opts {:suggestion {:keymap 
                              {:accept :<C-l>
                              :accept_line false
                              :accept_word false
                              :dismiss :<C-/>
                              :next :<C-.>
                              :prev "<C-,>"
                              }}}})
 (uu.tx :gitsigns.nvim {:opts {:current_line_blame true
        :current_line_blame_opts {:ignore_whitespace true}
        :numhl true
        :signcolumn false}})
 {:import :astrocommunity.editing-support.rainbow-delimiters-nvim}
 {:import :astrocommunity.motion.mini-surround}
 {:import :astrocommunity.motion.mini-move}
 {:import :astrocommunity.comment.mini-comment}
 {:import :astrocommunity.media.vim-wakatime}
 {:import :astrocommunity.editing-support.todo-comments-nvim}
 {:import :astrocommunity.scrolling.mini-animate}
 {:import :astrocommunity.editing-support.dial-nvim}
 {:import :astrocommunity.indent.mini-indentscope}
 {:import :astrocommunity.fuzzy-finder.telescope-zoxide}
 {:import :astrocommunity.git.neogit}
 {:import :astrocommunity.project.nvim-spectre}
 ]
