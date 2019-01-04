;Removes the startup screen
(setq inhibit-startup-screen t)

;Adds melpa packages
(require 'package)
(package-initialize)
(add-to-list 'package-archives
                 '("melpa" . "http://melpa.org/packages/") t)


;Local neotree packages for side browsing buffers
(add-to-list 'load-path "c:/libs/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;start neotree directory view with flexible width adjuster
(neotree-toggle)
(neotree-dir "d:/nodejsApps/")
(setq neo-window-fixed-size nil)

;Cosmetic
(load-theme 'misterioso)

; Set default font
(set-face-attribute 'default nil
                    :family "Consolas"
                    :height 110
                    :weight 'normal
                    :width 'normal)


;associate .vue files with vue-mode
(add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))

;send the backups to another directory
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))

;highlighting current line
(global-hl-line-mode +1)

;allow scrolling when searching
(setq isearch-allow-scroll t)

;turn on line numbers
(global-linum-mode t)

(set-frame-font "iosevka 14" nil t)

;enable global company mode
(global-company-mode t)

;turn off tabs
(setq-default indent-tabs-mode nil)

;deletes highlighted text if text input
(delete-selection-mode 1)

