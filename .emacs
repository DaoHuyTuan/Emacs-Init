(package-initialize)
(require 'package)
  (add-to-list 'package-archives '("Melpa" . "http://melpa.org/packages/"))
  (package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("Marmalade" . "http://marmalade-repo.org/packages/")
                         ("Melpa" . "http://melpa.milkbox.net/packages/")))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-global-modes nil)
 '(package-selected-packages
   (quote
    (wn-mode smooth-scroll helm evil-leader evil-escape evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#292b2e" :foreground "#c9c9c9" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "nil" :family "Consolas"))))
 '(cursor ((t (:background "#ededed" :foreground "606060"))))
 '(highlight ((t (:background "606060"))))
 '(hl-line ((t (:inherit highlight :background "#919191"))))
 '(match ((t (:background "RoyalBlue3"))))
 '(mode-line ((t (:background "#606060" :foreground "#b2b2b2" :box nil))))
 '(mode-line-highlight ((t (:box nil))))
 '(mode-line-inactive ((t (:inherit mode-line :background "grey30" :foreground "grey80" :box nil :weight light))))
 '(nobreak-hyphen ((t (:foreground "#ededed"))))
 '(org-level-1 ((t (:inherit outline-1 :width extra-expanded))))
 '(org-todo ((t (:weight bold))))
 '(region ((t (:background "#606060"))))
 '(vertical-border ((((type tty)) (:inherit mode-line-inactive :foreground "#606060")))))
 
;;;;;;;;;;;;;;;;;;;;APPEARENCES;;;;;;;;;;;;;;
	(set-fringe-mode 0)
	(scroll-bar-mode -1)
	(tool-bar-mode   -1)
	(tooltip-mode    -1)
	(menu-bar-mode   -1)
	'(ring-bell-function (quote ignore))
	(setq inhibit-startup-screen t)
;;;;;;;;;;;;;;;;;;;;Package;;;;;;;;;;;;;;;;;;



;;EVIL
	(require 'evil)
	(evil-mode 1)


;;EVIL ESCAPE
	(evil-escape-mode 1)
	(setq-default evil-escape-delay 0.2)
	(setq-default evil-escape-key-sequence "jf")


;;EVIL LEADER
	(global-evil-leader-mode)
	(evil-leader/set-leader "<SPC>")


;;SMOOTH SCROLL
	(require 'smooth-scroll)
	(smooth-scroll-mode t)
	(pixel-scroll-mode 1)
    (smooth-scroll-mode 1)
	(setq smooth-scroll/vscroll-step-size 1)
	(setq scroll-step 1)
	(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
    (setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
    (setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
	
	
;;WN MODE
	(wn-mode)
	
  
;;Key Blink
(setq web-mode-font-lock-keywords nil)
(setq-default global-font-lock-mode nil)
(evil-leader/set-key "f" 'helm-find-files)
(evil-leader/set-key "s" 'save-buffer)
(evil-leader/set-key "r" 'split-window-right)
(evil-leader/set-key "b" 'split-window-below)
;;(evil-leader/set-key "v" 'er/mark-word)
(evil-leader/set-key "x" 'switch-to-buffer)
(evil-leader/set-key "g" 'evil-ex)

(global-set-key (kbd "M-j") 'forward-char)
(global-set-key (kbd "M-f") 'backward-char)
(global-set-key (kbd "M-e") 'previous-line)
(global-set-key (kbd "M-i") 'next-line)
(global-set-key (kbd "M-q") 'move-beginning-of-line)
(global-set-key (kbd "M-p") 'move-end-of-line)
(global-set-key (kbd "M-k") 'forward-word)
(global-set-key (kbd "M-d") 'backward-word)
(global-set-key (kbd "M-c") 'scroll-up)
(global-set-key (kbd "M-n") 'scroll-down)
(global-set-key (kbd "M-z") 'eshell)
(global-set-key [(s /)] 'comment-line)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
