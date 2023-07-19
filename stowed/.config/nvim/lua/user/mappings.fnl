(local uu (require :user.util))
{:n {"<leader>bt" (uu.tx ":%s/\\s\\+$//e<cr>" {:desc "Delete trailing whitespace"})
     "<leader>bn" (uu.tx ":tabnew<cr>" {:desc "Create a new tab"})
     "<leader>."  (uu.tx "<cmd>cd %:p:h<cr>" {:desc "Set CWD" })
     :gy (uu.tx "\"+y" {:desc "Copy to system clipboard"})
     :gp (uu.tx "\"+p" {:desc "Paste from system clipboard"})
     :gP (uu.tx "\"+P" {:desc "Paste from system clipboard"})}
:x {
     :gy (uu.tx "\"+y" {:desc "Copy to system clipboard"})
     :gp (uu.tx "\"+p" {:desc "Paste from system clipboard"})
     :gP (uu.tx "\"+P" {:desc "Paste from system clipboard"})}
 :t {"<S-Esc>" (uu.tx "<c-\\><c-n>" {:desc "Enter Normal mode"})}}
