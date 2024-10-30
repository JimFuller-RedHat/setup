(setq user-full-name "James Fuller"
      user-mail-address "jim.fuller@webcomposite.com")

(setq
   inhibit-startup-screen t
   initial-scratch-message nil
   sentence-end-double-space nil
   ring-bell-function 'ignore
   use-dialog-box nil
   mark-even-if-inactive nil
   kill-whole-line t
   case-fold-search nil
   )

;; Define and initialise package repositories
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'load-path "~/.emacs.d/elpa")
(add-to-list 'load-path "~/.emacs.d/elpa-to-submit")
(package-initialize)


(require 'use-package)
(setq use-package-always-ensure 't)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(defalias 'yes-or-no-p 'y-or-n-p)

(require 'shell)

(require 'package)
(setq package-enable-at-startup nil)


;; load paths
(setq package-enable-at-startup nil)
(when (not package-archive-contents)
  (package-refresh-contents))


(require 'server)
(or (server-running-p)
    (server-start))

;;init emacs
(org-babel-load-file "~/.emacs.d/config.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-show-quick-access t nil nil "Numbers are helpful.")
 '(org-confirm-babel-evaluate nil)
 '(package-selected-packages
   '(paredit hideshowvis lsp-mode rustic rust-mode markdown-mode elpy org-superstar org-bullets which-key undo-tree solarized-theme rainbow-delimiters rainbow-blocks ob-ml-marklogic multiple-cursors multi-term mastodon magit-todos helm-swoop helm-rg gruvbox-theme dockerfile-mode docker-tramp dimmer company))
 '(word-wrap t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
