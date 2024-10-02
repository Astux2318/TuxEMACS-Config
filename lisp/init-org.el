(defun org-insert-src-block (src-code-type)
  "Insert a `SRC-CODE-TYPE' type source code block in org-mode."
  (interactive
   (let ((src-code-types
          '("emacs-lisp" "python" "C" "sh" "java" "js" "clojure" "C++" "css"
            "calc" "asymptote" "dot" "gnuplot" "ledger" "lilypond" "mscgen"
            "octave" "oz" "plantuml" "R" "sass" "screen" "sql" "awk" "ditaa"
            "haskell" "latex" "lisp" "matlab" "ocaml" "org" "perl" "ruby"
            "scheme" "sqlite")))
     (list (ido-completing-read "Source code type: " src-code-types))))
  (progn
    (newline-and-indent)
    (insert (format "#+BEGIN_SRC %s\n" src-code-type))
    (newline-and-indent)
    (insert "#+END_SRC\n")
    (previous-line 2)
    (org-edit-src-code)))
    
    
    (require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(require 'org) ;;启动 Org-mode 文本内语法高亮
(setq org-src-fontify-natively t)

(defvar mage-org-dir "~/MyCode/org/")


(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))
(setq org-superstar-headline-bullets-list '("☰" "☷" "☵" "☲"  "☳" "☴"  "☶"  "☱" ))

(defun *-org-insert-toc ()
  "Create table of contents (TOC) if current buffer is in
`org-mode'."
  (when (= major-mode 'org-mode)
    toc-org-insert-toc))

(provide 'init-org)
