(require 'fzf-native)

(fzf-native-load-dyn)

(setq fussy-use-cache t)

(setq fussy-score-fn 'fussy-fzf-native-score)

(setq completion-styles '(fussy))
