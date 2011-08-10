;; devil`s custom file

(defun my-add-subdirs-to-load-path (dir)
  (interactive)
  (let ((default-directory (concat dir "/")))
    (add-to-list 'load-path dir)
    (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
        (normal-top-level-add-subdirs-to-load-path))))

(defconst my-emacs-lisps-path     (concat dotfiles-dir "lisps/") )
(defconst my-emacs-my-lisps-path (concat dotfiles-dir "my-lisps"))
(my-add-subdirs-to-load-path my-emacs-my-lisps-path)
(my-add-subdirs-to-load-path my-emacs-lisps-path)


(defun am-add-hooks (hooks function &optional append local)
  "Call `add-hook' on hook list HOOKS use arguments FUNCTION, APPEND, LOCAL.

HOOKS can be one list or just a hook."
  (if (listp hooks)
      (mapc
       `(lambda (hook)
          (add-hook hook ',function append local))
       hooks)
    (add-hook hooks function append local)))


(defun am-intern (&rest strings)
  "`intern' use STRINGS."
  (intern
   (apply
    'concat
    (mapcar
     (lambda (element)
       (if (stringp element) element (symbol-name element)))
     strings))))

(require 'hs-minor-mode-settings)

(require 'cedet)
;;(semantic-load-enable-minimum-features) ;; or enable more if you wish
;;(require 'cedet-semantic-settings)
(require 'semantic)
(require 'cedet-settings)
;;
(semantic-load-enable-excessive-code-helpers)
;;(semantic-load-enable-semantic-debugging-helpers)
(global-srecode-minor-mode 1)


(global-semantic-mru-bookmark-mode 1)

(require 'semantic-decorate-include)

(setq semantic-default-submodes '(global-semantic-idle-scheduler-mode
                                  global-semanticdb-minor-mode
                                  global-semantic-idle-summary-mode
                                  global-semantic-mru-bookmark-mode))


;; (require 'malabar-mode)
;; (add-hook 'malabar-mode-hook 'auto-complete-mode)
;; (add-hook 'malabar-mode-hook 'yas/minor-mode)
;; (setq malabar-groovy-lib-dir (concat dotfiles-dir "/malabar-1.5/lib"))

;; (add-to-list 'auto-mode-alist '("\\.java\\'" . malabar-mode))


(setq-default make-backup-files nil)
(put 'erase-buffer 'disabled nil)

;; set default color theme
(require 'color-theme)
(color-theme-blackboard)
(global-linum-mode 1)

(require 'auto-complete-settings)

;;
(require 'yasnippet-settings)

;;(set-default-font "-microsoft-Comic Sans MS-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1")
(set-default-font "-altsys-Serafettin Cartoon-normal-italic-ultra-expanded-*-*-*-*-*-*-0-iso10646-1")
(add-hook 'c++-mode-hook
          (lambda ()
            (hs-minor-mode )
            (c-set-style "linux")
            (setq tab-width 8)
            (setq c-basic-offset 8)
            )
          )

(add-hook 'c-mode-hook
          (lambda ()
            (hs-minor-mode)
            (c-set-style "linux")
            (setq tab-width 8)
            (setq c-basic-offset 8)
            )
          )


(add-hook 'java-mode-hook
          (lambda ()
            (hs-minor-mode)
            (c-set-style "linux")
            (setq tab-width 8)
            (setq c-basic-offset 8)
            )
          )


(defun fullscreen ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_FULLSCREEN" 0)))


(defun my-maximized-horz ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(1 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))
(defun my-maximized-vert ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(1 "_NET_WM_STATE_MAXIMIZED_VERT" 0)))
(defun maximized ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(1 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(1 "_NET_WM_STATE_MAXIMIZED_VERT" 0)))

(setq apropos-do-all t)
(setq x-select-enable-clipboard t)

(require 'color-theme-devil)
(color-theme-devil)
