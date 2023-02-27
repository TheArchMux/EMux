(setq fussy-score-fn 'fussy-fzf-native-score)
(setq fussy-filter-fn 'fussy-filter-default)
(fzf-native-load-dyn)

(add-to-list 'completion-styles 'fussy t)
(setq completion-category-overrides nil)
(setq completion-category-defaults nil)

(setq completion-styles '(fussy))

(setq fussy-use-cache t)

(setq completion-styles '(basic partial-completion fussy))
