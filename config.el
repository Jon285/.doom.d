;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(load-theme 'doom-wilmersdorf t)
(doom-themes-treemacs-config)
(doom-themes-org-config)

(package-initialize)
(require 'yasnippet)
(company-quickhelp-mode)
(global-wakatime-mode)
(setq rustic-lsp-server 'rust-analyzer)
;; (elcord-mode)

(add-hook 'after-init-hook 'global-company-mode)
;; (add-hook 'lsp-mode-hook 'lsp-ui-doc-mode)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'elixir-mode-hook
          (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))
(add-hook 'elixir-mode-hook 'flycheck-mode)
;; (add-hook 'rust-mode-hook 'rustic-mode)
(eval-after-load 'company
  '(define-key company-active-map (kbd "C-c h") #'company-quickhelp-manual-begin))

(setq flycheck-check-syntax-automatically '(mode-enabled save))

;; Keybindings
(with-eval-after-load 'evil-maps
  (defun move-line-up ()
    "Move up the current line."
    (interactive)
    (transpose-lines 1)
    (forward-line -2)
    (indent-according-to-mode))

  (defun move-line-down ()
    "Move down the current line."
    (interactive)
    (forward-line 1)
    (transpose-lines 1)
    (forward-line -1)
    (indent-according-to-mode))

  (defun previous-5-lines ()
    (interactive)
    (cl-loop for i from 1 to 5
             do (evil-previous-visual-line)))

  (defun next-5-lines ()
    (interactive)
    (cl-loop for i from 1 to 5
             do (evil-next-visual-line)))
  (map!
   "<f12>"        #'+treemacs/toggle
   :ni "<f2>"          #'evil-save
   :niv "<f4>"         #'evilnc-comment-or-uncomment-lines
   :niv "C-k"          #'move-line-up
   :niv "C-j"          #'move-line-down
   :nv "H"             #'evil-first-non-blank-of-visual-line
   :nv "J"             #'next-5-lines
   :nv "K"             #'previous-5-lines
   :nv "L"             #'evil-end-of-visual-line
   :n "p"              #'evil-paste-after
   :n "P"              #'evil-paste-before))

;; General config
(setq

 ;;fonts
 doom-font (font-spec :family "Fira Code" :size 13)
 doom-big-font (font-spec :family "Fira Code" :size 36)

 ;; themes
 doom-themes-enable-bold t
 doom-themes-enable-italic t
 doom-themes-treemacs-theme "doom-colors"

 ;;misc
 rustic-format-trigger 'on-save
 ;; rust-enable-format-on-save t
 projectile-project-search-path '("~/Projetos/C" "~/Projetos/Rust" "~/Projetos")
 c-basic-offset 4
 c-default-style '((java-mode . "java")
                   (awk-mode . "awk")
                   (other . "linux"))

 ;; lsp variables
 lsp-signature-auto-activate nil
 lsp-ui-doc-enable t
 lsp-ui-doc-position 'at-point
 lsp-ui-doc-delay 1.0

 ;; org configs
 org-agenda-files (list "~/Documentos/Agenda/geral.org")
 org-directory "~/Documentos/Agenda"

 ;;modeline
 doom-modeline-icon (display-graphic-p)
 doom-modeline-major-mode-icon t
 doom-modeline-major-mode-color-icon t
 doom-modeline-buffer-state-icon t
 doom-modeline-env-version t
 all-the-icons-color-icons t
 doom-modeline-height 30
 )
