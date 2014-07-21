;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; 
;;;;; markdown-init.el
;;;;; 
;;;;; Author: Shosei KUBO
;;;;; 
;;;;; ref:
;;;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;; markdown-mode.el (installed via elpa)
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(setq markdown-css-path "file://localhost/Users/kubo_shosei/.emacs.d/markdown.css")
;;;; Warp
;;;; Realtime rendering & preview tool for Markdown
;;;; ref: http://kotatu.org/blog/2012/04/07/realtime-html-preview-with-emacs/
(add-to-list 'load-path "~/.emacs.d/elisp/warp/")
(require 'warp)
(add-to-list 'warp-format-converter-alist
	     '("\\.md" t (lambda ()
			   '("markdown"))))


;;;;; markdown-init.el ends here