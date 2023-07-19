{:colorscheme :astrodark
:heirline {:separators {:breadcrumbs "  " :path "/"}}
:icons {:ActiveLSP ""
               :ActiveTS " "
               :BufferClose ""
               :DapBreakpoint ""
               :DapBreakpointCondition ""
               :DapBreakpointRejected ""
               :DapLogPoint ""
               :DapStopped ""
               :DefaultFile ""
               :Diagnostic ""
               :DiagnosticError ""
               :DiagnosticHint ""
               :DiagnosticInfo ""
               :DiagnosticWarn ""
               :Ellipsis ""
               :FileModified ""
               :FileReadOnly ""
               :FoldClosed ""
               :FoldOpened ""
               :FolderClosed ""
               :FolderEmpty ""
               :FolderOpen ""
               :Git ""
               :GitAdd ""
               :GitBranch ""
               :GitChange ""
               :GitConflict ""
               :GitDelete ""
               :GitIgnored ""
               :GitRenamed ""
               :GitStaged ""
               :GitUnstaged ""
               :GitUntracked ""
               :LSPLoaded ""
               :LSPLoading1 ""
               :LSPLoading2 ""
               :LSPLoading3 ""
               :MacroRecording ""
               :Paste ""
               :Search ""
               :Selected ""
               :TabClose ""}
 :diagnostics {:underline true
               :virtual_text true}
 :polish [( require :user.autocmds )]
 :lazy {:defaults {:lazy true}
        :checker {:enabled true }
        :dev {:path "~/projects"}
        :performance {:rtp {:disabled_plugins ["tohtml" "netrwPlugin" "gzip" "matchit" "zipPlugin" "tarPlugin" "matchparen"]}}}
 :updater {:auto_quit true
           :channel :nightly
           }}
