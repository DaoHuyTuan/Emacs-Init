# Emacs Init

## 1. Description
> **This is my .emacs config**
## 2. List Package 
- **Helm** (for fuzzy search file)
- **Evil** (for vim keyblind)
- **Evil-escape** (to Switch ESC key into a other key)
- **Evil-leader** (To customize Leader key in Vim mode)
- **Wn-mode** (For switch to other buffer faster)
- **Smooth-scroll** (To support smooth scrolling on emacs) 
## 3. Config detail

**Evil Mode**
```
;;EVIL
	(require 'evil)
	(evil-mode 1)
```

**Evil Escape**
```
;;EVIL ESCAPE
;;this package help remap keyblind for <ESC>
	(evil-escape-mode 1)
	(setq-default evil-escape-delay 0.2) ;;set delay between 2 key
	(setq-default evil-escape-key-sequence "jf") ;;keyblind back to Normal Mode 
```
**Evil Leader**
```
;;EVIL LEADER
;;Map Leader key in Vim
	(global-evil-leader-mode)
	(evil-leader/set-leader "<SPC>")
```
**Smooth Scrolling**
```
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
```

**Wn Mode**
```
;;WN MODE
	(wn-mode)
```

## 4. KeyBlinds
These are my customize keyblinds 


```
;;For Window

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
(global-set-key [(M /)] 'comment-line)
```

```
;;For Macos

(setq web-mode-font-lock-keywords nil)
(setq-default global-font-lock-mode nil)
(evil-leader/set-key "f" 'helm-find-files)
(evil-leader/set-key "s" 'save-buffer)
(evil-leader/set-key "r" 'split-window-right)
(evil-leader/set-key "b" 'split-window-below)
;;(evil-leader/set-key "v" 'er/mark-word)
(evil-leader/set-key "x" 'switch-to-buffer)
(evil-leader/set-key "g" 'evil-ex)
(global-set-key (kbd "s-j") 'forward-char)
(global-set-key (kbd "s-f") 'backward-char)
(global-set-key (kbd "s-e") 'previous-line)
(global-set-key (kbd "s-i") 'next-line)
(global-set-key (kbd "s-q") 'move-beginning-of-line)
(global-set-key (kbd "s-p") 'move-end-of-line)
(global-set-key (kbd "s-k") 'forward-word)
(global-set-key (kbd "s-d") 'backward-word)
(global-set-key (kbd "s-c") 'scroll-up)
(global-set-key (kbd "s-n") 'scroll-down)
(global-set-key (kbd "s-z") 'eshell)
(global-set-key [(s /)] 'comment-line)
```

## 5. Appearence
- '(**default** ((t (
    - **:inherit** nil 
    - **:stipple** nil 
    - **:background** "#292b2e" 
    - **:foreground** "#c9c9c9" 
    - **:inverse-video** nil 
    - **:bo**x nil 
    - **:strike-through** nil 
    - **:overline** nil 
    - **:underline** nil 
    - **:slant** normal 
    - **:weight** normal 
    - **:height** 150 
    - **:width** normal 
    - **:foundry** "nil" 
    - **:family** "Consolas"))))
 - '(**cursor** ((t (
     - **:background** "#ededed" 
     - **:foreground** "606060"))))
 - '(**highlight** ((t (
     - **:background** "606060"))))
 - '(**hl-line** ((t (
     - **:inherit** highlight 
     - **:background** "#919191"))))
 - '(**match** ((t (
     - **:background** "RoyalBlue3"))))
 - '(**mode-line** ((t (
     - **:background** "#606060" 
     - **:foreground** "#b2b2b2" 
     - **:box** nil))))
 - '(**mode-line-highlight** ((t (
     - **:box** nil))))
 - '(mode-line-inactive ((t (
     - **:inherit** mode-line 
     - **:background** "grey30" 
     - **:foreground** "grey80" 
     - **:box** nil 
     - **:weight** light))))
 - '(**nobreak-hyphen** ((t (
     - **:foreground** "#ededed"))))
 - '(**org-level-1** ((t (
     - **:inherit** outline-1 
     - **:width** extra-expanded))))
 - '(**org-todo** ((t (
     - **:weight** bold))))
 - '(**region** ((t (
     - **:background** "#606060"))))
 - '(**vertical-border** ((((type tty)) (
     - **:inherit** mode-line-inactive 
     - **:foreground** "#606060")))))

## 6. Note 
- Font Family: [Consolas](https://www.wfonts.com/font/consolas).
