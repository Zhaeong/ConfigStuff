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



