(ns dna)

(defn to-rna [s]
  (assert (clojure.set/subset? (set s) (set "CGAT")))
  (apply str (replace {\T \U} (seq s))))
