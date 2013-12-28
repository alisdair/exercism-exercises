(ns phrase)

(defn word-count [s]
  (frequencies
    (clojure.string/split (clojure.string/lower-case s) #"[^A-Za-z0-9]+")))
