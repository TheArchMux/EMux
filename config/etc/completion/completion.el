(setq fussy-score-fn 'fussy-fzf-native-score)
(setq fussy-filter-fn 'fussy-filter-default)
(fzf-native-load-dyn)

(setq completion-category-overrides nil)
(setq completion-category-defaults nil)

(setq completion-styles '(fussy))

(setq fussy-use-cache t)
