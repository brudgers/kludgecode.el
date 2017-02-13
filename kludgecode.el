(defun kludge-org-generate ()
  "Makes documents from an org-mode file.\nDoes two things:\n  1. Tangles the org file.\n  2. Makes index.html from the org file."
  (interactive nil)
  (org-babel-tangle)
;; generate docs/index.html
  (org-html-export-as-html)
  (save-current-buffer
    (set-buffer "*Org HTML Export*")
    (write-file "index.html")
    (kill-buffer)))
