(setq custom-file (locate-user-emacs-file "custom_vars.el"))
(load custom-file 'noerror 'nomessage)
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))
(unless (package-installed-p 'use-package)
   (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)
(require 'org)
(org-babel-load-file
 (expand-file-name "README.org"
                   user-emacs-directory))
