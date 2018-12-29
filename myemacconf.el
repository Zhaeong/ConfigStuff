
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

(load-theme 'misterioso)


(add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))


(neotree-toggle)
(neotree-dir "d:/nodejsApps/")