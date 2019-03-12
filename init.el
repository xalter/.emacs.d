;;
;; init.el
;;

;; clor theme
(load-theme 'tango-dark t)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; company setting
(require 'company)
(global-company-mode)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)
(setq company-selection-wrap-around t)

(set-face-attribute 'company-tooltip nil
		    :foreground "black" :background "lightgrey")
(set-face-attribute 'company-tooltip-common nil
		    :foreground "black" :background "lightgrey")
(set-face-attribute 'company-tooltip-common-selection nil
		    :foreground "#FFFFFF" :background "steelblue")
(set-face-attribute 'company-tooltip-selection nil
		    :foreground "black" :background "steelblue")
(set-face-attribute 'company-preview-common nil
		    :background nil :foreground "lightgray" :underline t)
(set-face-attribute 'company-scrollbar-fg nil
		    :background "orange")
(set-face-attribute 'company-scrollbar-bg nil
		    :background "gray40")


;; language
;;(set-language-environment 'Japanese)

;; Coding system.
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(defun c-mode-common-init ()
  (setq c-set-style "bsd")
  (setq c-basic-offset 4)
  (setq indent-tabs-mode nil)
  (setq c-auto-newline t)
  (setq c-hungry-delete-key t)
  (c-set-offset 'substatement-open 0)
  )


(add-hook 'c-mode-hook 'c-mode-common-init)
(add-hook 'c++-mode-hook 'c-mode-common-init)
;;(add-hook 'cuda-mode-hook 'c-mode-common-init)

;;(add-to-list 'auto-mode-alist '("\\.cu\\'" . cuda-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))

;;(setq auto-mode-alist (cons (cons "\\.cu\\" 'c++-mode) auto-mode-alist))
;;(setq auto-mode-alist (cons (cons "\\.h\\"  'c++-mode) auto-mode-alist))

(line-number-mode t)
(column-number-mode t)

(add-to-list 'load-path "/path/to/rust-mode/")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
