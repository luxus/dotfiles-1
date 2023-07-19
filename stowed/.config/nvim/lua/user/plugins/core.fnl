(local uu (require :user.util))
(local utils (uu.autoload :astronvim.utils))
(local lspconfig (uu.autoload :lspconfig))

[(uu.tx
   :williamboman/mason-lspconfig.nvim
   {:opts (fn [_ opts]
            (set opts.ensure_installed (utils.list_insert_unique opts.ensure_installed [:fennel_language_server]))

            (set opts.handlers.lua_ls
                 (fn []
                   (lspconfig.lua_ls.setup
                     {:settings {:Lua {:diagnostics {:globals [:vim]}}}})))

            (set opts.handlers.fennel_language_server
                 (fn []
                   (lspconfig.fennel_language_server.setup
                     {:filetypes [:fennel]
                      :root_dir (lspconfig.util.root_pattern :fnl :lua)
                      :single_file_support true
                      :settings {:fennel {:diagnostics {:globals [:vim :jit :comment]}
                                          :workspace {:library (vim.api.nvim_list_runtime_paths)}}}})))
            opts)})
(uu.tx
  :nvim-treesitter/nvim-treesitter
  {:opts (fn [_ opts]
           (set opts.ensure_installed
                ((. (require :astronvim.utils) :list_insert_unique) opts.ensure_installed
                 [:clojure
                  :fennel])))})
 (uu.tx
 :jose-elias-alvarez/null-ls.nvim
 {:opts (fn [_ config] (set config.sources {}) config)})
(uu.tx
  :rcarriga/nvim-notify
  {:opts {:render :compact
          :stages :static}})
(uu.tx
  :nvim-neo-tree/neo-tree.nvim
  {:opts {:filesystem {:filtered_items {:hide_by_pattern ["/home/*/.config/nvim/lua/user/**.lua"]}

                       ;; Don't change the CWD if I open netrw style windows.
                       :cwd_target {:current :none}}}})
 (uu.tx
   :jay-babu/mason-null-ls.nvim
   {:opts (fn [_ opts]
            (set opts.ensure_installed (utils.list_insert_unique opts.ensure_installed []))
            opts)})

 (uu.tx
   :jay-babu/mason-nvim-dap.nvim
   {:opts (fn [_ opts]
            (set opts.ensure_installed (utils.list_insert_unique opts.ensure_installed []))
            opts)})
(uu.tx :better-escape.nvim {:enabled false})
 (uu.tx :nvim-autopairs {:enabled false})
 (uu.tx :mason.nvim {:opts {:PATH :append}}) 
 ; (uu.tx :theHamsta/nvim-dap-virtual-text {:opts})
 (uu.tx :which-key.nvim {:opts {:window {:winblend 10}}})
(uu.tx
  :NMAC427/guess-indent.nvim
  {:opts {:filetype_exclude [:clojure :fennel]}})
  (uu.tx :NvChad/nvim-colorizer.lua
  {:opts {:filetypes 
           {:* 
                     {:cmp_docs {:always_update true}
                     :cmp_menu {:always_update true}}}}
         :user_default_options {:mode :virtualtext :tailwind true}})
 ; (uu.tx :lspkind.nvim
 ;  :opts (fn [_ opts] (set opts.preset :codicons)
 ;          (set opts.symbol_map {:Array ""
 ;                                :Boolean ""
 ;                                :Key ""
 ;                                :Namespace ""
 ;                                :Null ""
 ;                                :Number ""
 ;                                :Object ""
 ;                                :Package ""
 ;                                :String ""})
 ;          opts))
 ]
