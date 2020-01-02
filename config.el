;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(load-theme 'doom-dracula t)
(doom-themes-treemacs-config)
(doom-themes-org-config)

(package-initialize)
(require 'yasnippet)
;; (require 'origami)
(global-origami-mode)
(company-quickhelp-mode)
(global-wakatime-mode)
;; (elcord-mode)

(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'rust-mode-hook 'cargo-minor-mode)
(add-hook 'elixir-mode-hook
          (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))
(add-hook 'elixir-mode-hook 'flycheck-mode)

(eval-after-load 'company
  '(define-key company-active-map (kbd "C-c h") #'company-quickhelp-manual-begin))

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
   :niv "<f12>"        #'treemacs
   :ni "<f2>"          #'evil-save
   :ni "<f4>"          #'comment-line
   :niv "C-k"          #'move-line-up
   :niv "C-j"          #'move-line-down
   :nv "H"             #'evil-first-non-blank-of-visual-line
   :nv "J"             #'next-5-lines
   :nv "K"             #'previous-5-lines
   :nv "L"             #'evil-end-of-visual-line
   :n "p"              #'evil-paste-after
   :n "P"              #'evil-paste-before
   :n "SPC o o o"      #'origami-toggle-node
   :n "SPC o o O"      #'origami-open-node-recursively
   :n "SPC o o c"      #'origami-close-node
   :n "SPC o o C"      #'origami-close-node-recursively
   :n "SPC r c c"      #'cargo-process-build
   :n "SPC r c r"      #'cargo-process-run
   :n "SPC r c d"      #'cargo-process-doc))

;; General config
(setq

 ;;fonts
 doom-font (font-spec :family "Source Code Pro" :size 13)
 doom-big-font (font-spec :family "Source Code Pro" :size 36)

 ;; themes
 doom-themes-enable-bold t
 doom-themes-enable-italic t
 doom-themes-treemacs-theme "doom-colors"

 ;;misc
 rust-enable-format-on-save t
 projectile-project-search-path '("~/Projetos/C" "~/Projetos/Rust")
 c-basic-offset 4
 c-default-style '((java-mode . "java")
                   (awk-mode . "awk")
                   (other . "linux"))

 ;; org configs
 org-agenda-files (list "~/Documentos/Agenda/geral.org")
 org-directory "~/Documentos/Agenda"
 org-todo-keywords '((sequence "TODO(t)" "PROGRESS(p)" "WAIT(w)" "|" "DONE(d)" "CANCELLED(c)"))

 ;;modeline
 doom-modeline-icon (display-graphic-p)
 doom-modeline-major-mode-icon t
 doom-modeline-major-mode-color-icon t
 doom-modeline-buffer-state-icon t
 doom-modeline-env-version t
 all-the-icons-color-icons t
 doom-modeline-height 30
 )
