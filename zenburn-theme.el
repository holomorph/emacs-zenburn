;;; zenburn-theme.el --- Zenburn theme for faces

;; Copyright © 2013-2014 Mark Oteiza

;; Author:      Mark Oteiza
;; Created:     14 August 2013
;; Keywords:    color themes

;; This file is not part of GNU Emacs.

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published
;; by the Free Software Foundation, either version 3 of the License,
;; or (at your option) any later version.

;; This file is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This is a port of the high contrast variant of `zenburn', the color
;; scheme for Vim written by Jani Nurminen.  Its home page is
;; <http://slinky.imukuppi.org/zenburnpage/>.

;;; Code:

(deftheme zenburn
  "Nothing too fancy, just some alien fruit salad to keep you in the zone.
This syntax file was designed to be used with dark environments and
low light situations. Of course, if it works during a daybright
office, go ahead :)")

(let
  ((class '((class color) (min-colors 256)))
   (zenburn-boolean        "#dca3a3")
   (zenburn-character      "#dca3a3")
   (zenburn-comment        "#7f9f7f")
   (zenburn-conditional    "#f0dfaf")
   (zenburn-constant       "#dca3a3")
   (zenburn-cursor-fg      "#000d18")
   (zenburn-cursor-bg      "#8faf9f")
   (zenburn-debug          "#bca3a3")
   (zenburn-define         "#ffcfaf")
   (zenburn-delimiter      "#8f8f8f")
   (zenburn-diffadd-fg     "#709080")
   (zenburn-diffadd-bg     "#313c36")
   (zenburn-diffchange-fg  "#dcdccc")
   (zenburn-diffchange-bg  "#333333")
   (zenburn-diffempty-fg   "#333333")
   (zenburn-diffempty-bg   "#464646")
   (zenburn-diffdelete     "#cfbfaf")
   (zenburn-difftext-fg    "#ecbcbc")
   (zenburn-difftext-bg    "#41363c")
   (zenburn-directory      "#9fafaf")
   (zenburn-error-fg       "#e37170")
   (zenburn-error-bg       "#3d3535")
   (zenburn-errormsg       "#80d4aa")
   (zenburn-exception      "#c3bf9f")
   (zenburn-float          "#c0bed1")
   (zenburn-foldColumn     "#93b3a3")
   (zenburn-folded         "#93b3a3")
   (zenburn-function       "#efef8f")
   (zenburn-hl-line        "#121212")
   (zenburn-identifier     "#efdcbc")
   (zenburn-isearch-fg     "#385f38")
   (zenburn-isearch-bg     "#f8f893")
   (zenburn-keyword        "#f0dfaf")
   (zenburn-label          "#dfcfaf")
   (zenburn-linum-fg       "#9fafaf")
   (zenburn-linum-bg       "#161616")
   (zenburn-macro          "#ffcfaf")
   (zenburn-match-paren-fg "#f0f0c0")
   (zenburn-match-paren-bg "#383838")
   (zenburn-modeline-fg    "#ccdc90")
   (zenburn-modeline-bg    "#313633")
   (zenburn-modelinenc-fg  "#88b090")
   (zenburn-modelinenc-bg  "#2e3330")
   (zenburn-modeMsg        "#ffcfaf")
   (zenburn-moreMsg        "#ffffff")
   (zenburn-nontext        "#404040")
   (zenburn-normal-fg      "#dcdccc")
   (zenburn-normal-bg      "#1f1f1f")
   (zenburn-number         "#8cd0d3")
   (zenburn-operator       "#f0efd0")
   (zenburn-pmenu-fg       "#ccccbc")
   (zenburn-pmenu-bg       "#242424")
   (zenburn-pmenusel-fg    "#ccdc90")
   (zenburn-pmenusel-bg    "#353a37")
   (zenburn-precondit      "#dfaf8f")
   (zenburn-preproc        "#ffcfaf")
   (zenburn-question       "#ffffff")
   (zenburn-repeat         "#ffd7a7")
   (zenburn-search-fg      "#ffffe0")
   (zenburn-search-bg      "#284f28")
   (zenburn-specialchar    "#dca3a3")
   (zenburn-specialcomment "#82a282")
   (zenburn-special        "#cfbfaf")
   (zenburn-specialkey     "#9ece9e")
   (zenburn-statement      "#e3ceab")
   (zenburn-storageClass   "#c3bf9f")
   (zenburn-string         "#cc9393")
   (zenburn-structure      "#efefaf")
   (zenburn-tag            "#e89393")
   (zenburn-title          "#efefef")
   (zenburn-todo           "#dfdfdf")
   (zenburn-typedef        "#dfe4cf")
   (zenburn-type           "#dfdfbf")
   (zenburn-underlined     "#dcdccc")
   (zenburn-vertsplit      "#2e3330")
   (zenburn-visual-fg      "#000000")
   (zenburn-visual-bg      "#71d3b4")
   (zenburn-visualnos-fg   "#333333")
   (zenburn-visualnos-bg   "#f18c96")
   (zenburn-warning-fg     "#ffffff")
   (zenburn-warning-bg     "#333333")
   (zenburn-wildmenu-fg    "#cbecd0")
   (zenburn-wildmenu-bg    "#2c302d"))

  (custom-theme-set-faces
   'zenburn

   `(cursor       ((,class (:foreground ,zenburn-cursor-fg :background ,zenburn-cursor-bg))))
   `(default      ((,class (:foreground ,zenburn-normal-fg :background ,zenburn-normal-bg))))
   `(escape-glyph ((,class (:foreground ,zenburn-specialkey))))
   `(error
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-error-fg :background ,zenburn-error-bg :weight bold))
      (,class
       (:foreground "#d75f5f" :background "#303030" :weight bold))))
   `(fringe      ((,class (:foreground "#606060" :background ,zenburn-modelinenc-bg))))
   `(highlight   ((,class (:foreground ,zenburn-wildmenu-bg :background ,zenburn-wildmenu-fg))))
   `(header-line ((,class (:foreground ,zenburn-title :background nil :weight bold :underline nil :inherit nil))))
   `(isearch     ((,class (:foreground ,zenburn-isearch-fg :background ,zenburn-isearch-bg))))
   `(isearch-fail
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-warning-fg :background ,zenburn-warning-bg :weight bold))
      (,class
       (:foreground "color-231" :background ,zenburn-warning-bg :weight bold))))
   `(link                ((,class (:foreground ,zenburn-specialkey :background ,zenburn-wildmenu-bg :underline t :weight normal))))
   `(link-visited        ((,class (:foreground ,zenburn-constant :inherit link))))
   `(lazy-highlight      ((,class (:foreground ,zenburn-search-fg :background ,zenburn-search-bg))))
   `(menu                ((,class (:foreground ,zenburn-pmenu-fg :background ,zenburn-pmenu-bg))))
   `(match               ((,class (:foreground ,zenburn-function :background ,zenburn-normal-bg :slant italic))))
   `(minibuffer-prompt   ((,class (:foreground ,zenburn-special :weight normal))))
   `(mode-line           ((,class (:foreground ,zenburn-modeline-fg :background ,zenburn-modeline-bg :weight bold :box nil))))
   `(mode-line-buffer-id ((,class (:foreground ,zenburn-identifier :background nil))))
   `(mode-line-inactive
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-modelinenc-fg :background ,zenburn-modelinenc-bg :weight normal :box nil))
      (,class
       (:foreground ,zenburn-modelinenc-fg :background "#262626" :weight normal :box nil))))
   `(next-error          ((,class (:inherit highlight))))
   `(region
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-visual-fg :background ,zenburn-visual-bg))
      (,class
       (:foreground "#080808" :background ,zenburn-visual-bg))))
   `(secondary-selection
     ((((class color) (min-colors 4096))
       (:background "#0f0f0f"))
      (,class
       (:background "#080808"))))
   `(shadow              ((,class (:foreground ,zenburn-nontext))))
   `(success             ((,class (:foreground ,zenburn-specialkey :weight bold))))
   `(vertical-border     ((,class (:foreground ,zenburn-modelinenc-fg :background ,zenburn-modeline-bg :weight normal))))
   `(warning
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-warning-fg :background ,zenburn-warning-bg :weight bold))
      (,class
       (:foreground "color-231" :background ,zenburn-warning-bg :weight bold))))

   `(font-lock-builtin-face              ((,class (:foreground ,zenburn-statement :weight normal))))
   `(font-lock-comment-face              ((,class (:foreground ,zenburn-comment))))
   `(font-lock-constant-face             ((,class (:foreground ,zenburn-constant :weight bold))))
   `(font-lock-doc-string-face           ((,class (:foreground ,zenburn-constant :weight bold))))
   `(font-lock-function-name-face        ((,class (:foreground ,zenburn-function :weight normal))))
   `(font-lock-keyword-face              ((,class (:foreground ,zenburn-keyword :weight bold))))
   `(font-lock-negation-char-face        ((,class (:foreground ,zenburn-operator))))
   `(font-lock-preprocessor-face         ((,class (:foreground ,zenburn-preproc :weight bold))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,zenburn-macro :weight bold))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,zenburn-specialcomment :weight bold))))
   `(font-lock-string-face               ((,class (:foreground ,zenburn-string))))
   `(font-lock-type-face                 ((,class (:foreground ,zenburn-type :weight bold))))
   `(font-lock-variable-name-face        ((,class (:foreground ,zenburn-macro :weight bold))))
   `(font-lock-warning-face
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-warning-fg :background ,zenburn-warning-bg :weight bold))
      (,class
       (:foreground "color-231" :background ,zenburn-warning-bg :weight bold))))

   `(c-annotation-face ((,class (:foreground ,zenburn-constant :weight bold))))

   `(change-log-date ((,class (:foreground ,zenburn-number))))

   `(comint-highlight-prompt ((,class (:foreground ,zenburn-debug :weight bold))))

   `(company-preview ((,class (:foreground ,zenburn-wildmenu-bg :background ,zenburn-wildmenu-fg))))
   `(company-preview-common ((,class (:foreground ,zenburn-normal-bg))))
   `(company-tooltip ((,class (:foreground ,zenburn-pmenu-fg :background "#121212"))))
   `(company-tooltip-annotation ((,class (:foreground ,zenburn-specialkey))))
   `(company-tooltip-common ((,class (:foreground ,zenburn-pmenusel-fg :weight bold))))
   `(company-tooltip-common-selection ((,class (:foreground ,zenburn-wildmenu-fg :weight bold))))
   `(company-tooltip-selection ((,class (:background ,zenburn-pmenu-bg))))
   `(company-scrollbar-bg ((,class (:background ,zenburn-wildmenu-bg))))
   `(company-scrollbar-fg ((,class (:background ,zenburn-wildmenu-fg))))

   `(compilation-column-number  ((,class (:foreground ,zenburn-number :weight normal))))
   `(compilation-error          ((,class (:foreground ,zenburn-error-fg :background ,zenburn-error-bg :weight bold))))
   `(compilation-line-number    ((,class (:foreground ,zenburn-number :weight normal))))
   `(compilation-mode-line-exit ((,class (:foreground ,zenburn-specialkey :weight bold))))
   `(compilation-mode-line-fail ((,class (:foreground ,zenburn-error-fg :background ,zenburn-error-bg :weight bold))))

   `(completions-annotations      ((,class (:foreground ,zenburn-comment))))
   `(completions-common-part      ((,class (:foreground ,zenburn-pmenu-fg :background ,zenburn-pmenu-bg :weight bold))))
   `(completions-first-difference ((,class (:foreground ,zenburn-pmenusel-fg :background ,zenburn-pmenu-bg :weight bold))))

   `(cua-rectangle
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-visual-fg :background ,zenburn-visual-bg))
      (,class
       (:foreground "#080808" :background ,zenburn-visual-bg))))

   `(custom-button                  ((,class (:foreground ,zenburn-label :background ,zenburn-warning-bg :weight bold :underline t))))
   `(custom-button-mouse            ((,class (:inherit highlight))))
   `(custom-button-pressed          ((,class (:foreground ,zenburn-wildmenu-fg :background ,zenburn-wildmenu-bg :weight bold))))
   `(custom-button-pressed-unraised ((,class (:inherit custom-button-pressed))))
   `(custom-button-unraised         ((,class (:foreground ,zenburn-label :background ,zenburn-warning-bg :weight bold :underline nil))))
   `(custom-comment                 ((,class (:foreground ,zenburn-comment :background ,zenburn-normal-bg :weight normal))))
   `(custom-comment-tag             ((,class (:foreground ,zenburn-specialcomment :background ,zenburn-normal-bg :weight bold))))
   `(custom-invalid                 ((,class (:inherit error))))
   `(custom-rogue                   ((,class (:inherit warning))))
   `(custom-state                   ((,class (:foreground ,zenburn-macro :weight bold))))
   `(custom-variable-tag            ((,class (:foreground ,zenburn-title :weight bold))))

   `(diff-added
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-diffadd-fg :background ,zenburn-diffadd-bg :weight bold))
      (,class
       (:foreground "#5f8787" :background "#303030" :weight bold))))
   `(diff-file-header    ((t (:foreground ,zenburn-type :background nil :weight bold))))
   `(diff-header         ((t (:foreground ,zenburn-define :background nil :weight bold))))
   `(diff-removed
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-diffempty-fg :background ,zenburn-diffempty-bg :weight bold))
      (,class
       (:foreground "#1c1c1c" :background "#3a3a3a" :weight bold))))
   `(diff-refine-added
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-difftext-fg :background ,zenburn-difftext-bg :weight bold))
      (,class
       (:foreground "#ffafaf" :background "#3a3a3a" :weight bold))))
   `(diff-refine-removed
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-difftext-fg :background ,zenburn-difftext-bg :weight bold))
      (,class
       (:foreground "#ffafaf" :background "#3a3a3a" :weight bold))))

   `(dired-directory
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-directory :weight bold))
      (,class
       (:foreground "#87afaf" :weight bold))))
   `(dired-symlink
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-question :weight bold))
      (,class
       (:foreground "color-231" :weight bold))))

   `(ediff-current-diff-A
     ((((class color) (min-colors 4096))
       (:background ,zenburn-diffchange-bg))
      (,class
       (:background "#303030"))))
   `(ediff-current-diff-B ((,class (:inherit ediff-current-diff-A))))
   `(ediff-even-diff-A
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-diffempty-fg :background ,zenburn-diffempty-bg :weight bold))
      (,class
       (:foreground "#1c1c1c" :background "#3a3a3a" :weight bold))))
   `(ediff-even-diff-B
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-diffadd-fg :background ,zenburn-diffadd-bg :weight bold))
      (,class
       (:foreground "#5f8787" :background "#303030" :weight bold))))
   `(ediff-fine-diff-A
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-difftext-fg :background ,zenburn-difftext-bg :weight bold))
      (,class
       (:foreground "#ffafaf" :background "#3a3a3a" :weight bold))))
   `(ediff-fine-diff-B ((,class (:inherit ediff-fine-diff-A))))
   `(ediff-odd-diff-A  ((,class (:inherit ediff-even-diff-A))))
   `(ediff-odd-diff-B  ((,class (:inherit ediff-even-diff-B))))

   `(emms-browser-album-face
        ((((class color) (min-colors 4096))
       (:foreground ,zenburn-directory :weight bold))
      (,class
       (:foreground "#87afaf" :weight bold))))
   `(emms-browser-artist-face     ((,class (:foreground ,zenburn-keyword :weight bold))))
   `(emms-browser-track-face      ((,class (:foreground ,zenburn-normal-fg))))
   `(emms-browser-year/genre-face ((,class (:foreground ,zenburn-number))))
   `(emms-playlist-selected-face  ((,class (:foreground ,zenburn-title :weight bold))))
   `(emms-playlist-track-face     ((,class (:foreground ,zenburn-normal-fg))))

   `(erc-action-face         ((,class (:foreground ,zenburn-function :weight normal))))
   `(erc-bold-face           ((,class (:weight bold))))
   `(erc-button              ((,class (:foreground ,zenburn-specialkey :weight normal :underline t))))
   `(erc-current-nick-face   ((,class (:foreground ,zenburn-tag :weight bold))))
   `(erc-dangerous-host-face ((,class (:foreground ,zenburn-warning-fg :background ,zenburn-warning-bg :weight bold))))
   `(erc-default-face        ((,class (:foreground ,zenburn-normal-fg))))
   `(erc-direct-msg-face     ((,class (:foreground ,zenburn-keyword :weight bold))))
   `(erc-error-face          ((,class (:foreground ,zenburn-errormsg :weight bold))))
   `(erc-fool-face           ((,class (:foreground ,zenburn-nontext :weight bold))))
   `(erc-highlight-face      ((,class (:foreground ,zenburn-string :weight normal))))
   `(erc-input-face          ((,class (:foreground ,zenburn-string :weight normal))))
   `(erc-keyword-face        ((,class (:foreground ,zenburn-question))))
   `(erc-my-nick-face        ((,class (:foreground ,zenburn-number :weight bold))))
   `(erc-nick-default-face   ((,class (:foreground ,zenburn-identifier :weight bold))))
   `(erc-nick-msg-face       ((,class (:foreground ,zenburn-tag :weight bold))))
   `(erc-notice-face         ((,class (:foreground ,zenburn-comment :weight normal))))
   `(erc-pal-face            ((,class (:foreground ,zenburn-specialkey :weight bold))))
   `(erc-prompt-face         ((,class (:foreground ,zenburn-number :background ,zenburn-normal-bg :weight normal))))
   `(erc-timestamp-face      ((,class (:foreground ,zenburn-nontext :weight normal))))
   `(erc-underline-face      ((,class (:underline t))))

   `(eshell-ls-directory
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-directory :weight bold))
      (,class
       (:foreground "#87afaf" :weight bold))))
   `(eshell-ls-executable ((,class (:foreground "#cbecd0" :weight bold))))
   `(eshell-ls-readonly   ((,class (:foreground ,zenburn-debug))))
   `(eshell-ls-special    ((,class (:foreground ,zenburn-function :background ,zenburn-wildmenu-bg :weight bold))))
   `(eshell-ls-symlink
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-question :weight bold))
      (,class
       (:foreground "color-231" :weight bold))))
   `(eshell-ls-unreadable
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-exception))
      (,class
       (:foreground "#d7d7af"))))

   `(flycheck-error   ((,class (:inherit error))))
   `(flycheck-warning ((,class (:inherit warning))))

   `(gnus-header-content        ((,class (:foreground ,zenburn-specialkey))))
   `(gnus-header-from           ((,class (:foreground ,zenburn-string :weight normal))))
   `(gnus-header-name           ((,class (:foreground ,zenburn-preproc :weight bold))))
   `(gnus-header-newsgroups     ((,class (:foreground ,zenburn-function))))
   `(gnus-header-subject        ((,class (:foreground ,zenburn-title :weight bold))))
   `(gnus-server-offline        ((,class (:foreground ,zenburn-nontext :weight bold))))
   `(gnus-server-opened         ((,class (:foreground ,zenburn-specialkey :weight bold))))
   `(gnus-server-denied         ((,class (:foreground ,zenburn-error-fg :background ,zenburn-error-bg :weight bold))))
   `(gnus-splash                ((,class (:foreground ,zenburn-specialkey))))
   `(gnus-summary-cancelled     ((,class (:foreground ,zenburn-error-fg :background ,zenburn-error-bg :weight bold))))
   `(gnus-summary-normal-read   ((,class (:foreground ,zenburn-normal-fg))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,zenburn-error-fg))))
   `(gnus-summary-normal-unread ((,class (:foreground ,zenburn-title :weight bold))))
   `(gnus-summary-selected      ((,class (:foreground ,zenburn-wildmenu-bg :background ,zenburn-wildmenu-fg :underline nil))))

   `(hl-line ((,class (:background ,zenburn-hl-line :inherit nil))))

   `(ido-first-match ((,class (:foreground ,zenburn-function :weight normal))))
   `(ido-only-match  ((,class (:foreground ,zenburn-specialkey))))
   `(ido-subdir
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-directory :weight bold))
      (,class
       (:foreground "#87afaf" :weight bold))))

   `(info-menu-header
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-directory :weight bold :underline nil :inherit nil))
      (,class
       (:foreground "#87afaf" :weight bold :underline nil :inherit nil))))
   `(info-menu-star   ((,class (:foreground ,zenburn-normal-fg))))
   `(info-title-1     ((,class (:foreground ,zenburn-title :weight bold))))
   `(info-title-2     ((,class (:foreground ,zenburn-title :weight bold))))
   `(info-title-3     ((,class (:foreground ,zenburn-title :weight bold))))
   `(info-title-4     ((,class (:foreground ,zenburn-title :weight bold))))

   `(linum ((,class (:foreground ,zenburn-linum-fg :background ,zenburn-linum-bg :weight normal))))

   `(magit-log-head-label-bisect-bad    ((,class (:foreground ,zenburn-error-fg :background ,zenburn-error-bg :weight bold))))
   `(magit-log-head-label-bisect-good   ((,class (:foreground ,zenburn-specialkey :background nil :weight bold))))
   `(magit-log-head-label-bisect-skip   ((,class (:foreground ,zenburn-function :background ,zenburn-wildmenu-bg :weight bold))))
   `(magit-log-head-label-head          ((,class (:foreground ,zenburn-specialkey :background nil :weight bold))))
   `(magit-log-head-label-local         ((,class (:foreground ,zenburn-number :background nil :weight bold))))
   `(magit-log-head-label-remote        ((,class (:foreground ,zenburn-visualnos-bg :background nil :weight bold))))
   `(magit-log-head-label-tags          ((,class (:foreground ,zenburn-function :background nil :weight bold))))

   `(makefile-space ((,class (:background ,zenburn-error-bg))))

   `(markdown-bold-face             ((,class (:inherit nil :weight bold))))
   `(markdown-header-delimiter-face ((,class (:inherit markdown-header-face))))
   `(markdown-header-face           ((,class (:foreground ,zenburn-title :weight bold))))
   `(markdown-header-rule-face      ((,class (:inherit markdown-header-face))))
   `(markdown-italic-face           ((,class (:inherit nil :slant italic))))
   `(markdown-url-face              ((,class (:inherit link))))

   `(message-cited-text        ((,class (:foreground ,zenburn-comment))))
   `(message-header-cc         ((,class (:foreground ,zenburn-specialkey))))
   `(message-header-name       ((,class (:foreground ,zenburn-preproc :weight bold :underline nil))))
   `(message-header-newsgroups ((,class (:foreground ,zenburn-function))))
   `(message-header-other      ((,class (:foreground ,zenburn-string))))
   `(message-header-subject    ((,class (:foreground ,zenburn-title :weight bold))))
   `(message-header-to         ((,class (:foreground ,zenburn-specialkey))))
   `(message-header-xheader    ((,class (:foreground ,zenburn-debug :weight bold))))
   `(message-mml               ((,class (:foreground ,zenburn-function))))
   `(message-separator         ((,class (:foreground ,zenburn-nontext))))

   `(mm-uu-extract ((,class (:background ,zenburn-hl-line))))

   `(mu4e-header-highlight-face          ((,class (:foreground ,zenburn-wildmenu-bg :background ,zenburn-wildmenu-fg))))
   `(mu4e-view-contact-face              ((,class (:foreground ,zenburn-string :weight normal))))
   `(mu4e-view-header-value-face         ((,class (:foreground ,zenburn-specialkey))))
   `(mu4e-view-special-header-value-face ((,class (:foreground ,zenburn-function))))

   `(org-code ((,class (:foreground ,zenburn-keyword :weight bold))))
   `(org-date ((,class (:foreground ,zenburn-number))))
   `(org-formula ((,class (:foreground ,zenburn-function))))
   `(org-table ((,class (:foreground ,zenburn-specialkey))))

   `(rst-adornment  ((,class (:foreground ,zenburn-title :background ,zenburn-normal-bg :weight bold))))
   `(rst-definition ((,class (:foreground ,zenburn-define :weight bold))))
   `(rst-level-1    ((,class (:foreground ,zenburn-title :weight bold))))
   `(rst-level-2    ((,class (:foreground ,zenburn-title :weight bold))))
   `(rst-level-3    ((,class (:foreground ,zenburn-title :weight bold))))
   `(rst-level-4    ((,class (:foreground ,zenburn-title :weight bold))))
   `(rst-level-5    ((,class (:foreground ,zenburn-title :weight bold))))
   `(rst-level-6    ((,class (:foreground ,zenburn-title :weight bold))))

   `(sh-escaped-newline ((,class (:foreground ,zenburn-statement))))
   `(sh-heredoc         ((,class (:foreground ,zenburn-string))))
   `(sh-quoted-exec     ((,class (:foreground "#d7afaf"))))

   `(show-paren-mismatch ((,class (:foreground ,zenburn-error-fg :background ,zenburn-error-bg :weight bold))))
   `(show-paren-match    ((,class (:foreground ,zenburn-match-paren-fg :background ,zenburn-match-paren-bg :weight bold))))

   `(sp-show-pair-match-face    ((,class (:foreground ,zenburn-match-paren-fg :background ,zenburn-match-paren-bg :weight bold))))
   `(sp-show-pair-mismatch-face ((,class (:foreground ,zenburn-error-fg :background ,zenburn-error-bg :weight bold))))

   `(speedbar-button-face    ((,class (:foreground ,zenburn-function))))
   `(speedbar-directory-face
     ((((class color) (min-colors 4096))
       (:foreground ,zenburn-directory :weight bold))
      (,class
       (:foreground "#87afaf" :weight bold))))
   `(speedbar-file-face      ((,class (:foreground ,zenburn-normal-fg))))
   `(speedbar-highlight-face ((,class (:inherit highlight))))
   `(speedbar-selected-face  ((,class (:inherit secondary-selection))))
   `(speedbar-separator-face ((,class (:foreground ,zenburn-title :background ,zenburn-linum-bg :weight bold))))
   `(speedbar-tag-face       ((,class (:foreground ,zenburn-tag :weight bold))))

   `(tty-menu-disabled-face ((,class (:foreground ,zenburn-nontext :background "#121212"))))
   `(tty-menu-enabled-face  ((,class (:foreground ,zenburn-modeline-fg :background "#121212" :weight bold))))
   `(tty-menu-selected-face ((,class (:foreground ,zenburn-wildmenu-fg :background ,zenburn-wildmenu-bg))))

   `(tooltip ((,class (:foreground ,zenburn-delimiter :background "#080808"))))

   `(whitespace-tab      ((,class (:foreground ,zenburn-specialkey :background ,zenburn-normal-bg))))
   `(whitespace-trailing ((,class (:foreground ,zenburn-specialkey :background ,zenburn-normal-bg))))

   `(widget-documentation ((,class (:foreground ,zenburn-string))))
   `(widget-field         ((,class (:foreground ,zenburn-isearch-bg :background ,zenburn-isearch-fg :weight normal))))

   `(wl-highlight-demo-face                          ((,class (:foreground ,zenburn-normal-fg))))
   `(wl-highlight-folder-unknown-face                ((,class (:foreground ,zenburn-errormsg :weight bold))))
   `(wl-highlight-folder-unread-face                 ((,class (:foreground ,zenburn-title :weight bold))))
   `(wl-highlight-folder-zero-face                   ((,class (:foreground ,zenburn-nontext :weight normal))))
   `(wl-highlight-logo-face                          ((,class (:foreground ,zenburn-specialkey))))
   `(wl-highlight-message-citation-header            ((,class (:foreground ,zenburn-precondit :weight bold))))
   `(wl-highlight-message-cited-text-1               ((,class (:foreground ,zenburn-comment))))
   `(wl-highlight-message-cited-text-2               ((,class (:foreground ,zenburn-repeat :weight bold))))
   `(wl-highlight-message-cited-text-3               ((,class (:foreground ,zenburn-string))))
   `(wl-highlight-message-cited-text-4               ((,class (:foreground ,zenburn-define :weight bold))))
   `(wl-highlight-message-header-contents            ((,class (:foreground ,zenburn-specialkey :slant italic))))
   `(wl-highlight-message-headers                    ((,class (:foreground ,zenburn-preproc :weight bold))))
   `(wl-highlight-message-important-header-contents  ((,class (:foreground ,zenburn-title :weight bold))))
   `(wl-highlight-message-important-header-contents2 ((,class (:foreground ,zenburn-string))))
   `(wl-highlight-message-signature                  ((,class (:foreground ,zenburn-title :weight bold))))
   `(wl-highlight-summary-displaying-face            ((,class (:foreground ,zenburn-wildmenu-bg :background ,zenburn-wildmenu-fg))))
   `(wl-highlight-summary-disposed-face              ((,class (:foreground ,zenburn-nontext))))
   `(wl-highlight-summary-new-face                   ((,class (:foreground ,zenburn-title :weight bold))))
   `(wl-highlight-summary-normal-face                ((,class (:foreground ,zenburn-normal-fg :weight normal))))
   `(wl-highlight-summary-thread-top-face            ((,class (:foreground ,zenburn-normal-fg))))
   `(wl-highlight-summary-unread-face                ((,class (:foreground ,zenburn-title :weight bold))))
   `(wl-message-header-narrowing-face                ((,class (:foreground ,zenburn-difftext-fg :background ,zenburn-difftext-bg :weight bold))))

   `(yas-field-highlight-face ((,class (:inherit highlight))))

  )
  )

(provide-theme 'zenburn)

;;; zenburn-theme.el ends here
