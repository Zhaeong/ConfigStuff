;Removes the startup screen
(setq inhibit-startup-screen t)

;========This will auto install packages===============================
; list the packages you want
(setq package-list '(neotree company))

; list the repositories containing them
(setq package-archives '(("melpa" . "http://melpa.org/packages/")                         
                         ))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
;======================================================================


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

