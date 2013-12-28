(ns anagram)

(defn- sorted-lowered [s]
  (apply str (sort (clojure.string/lower-case s))))

(defn- is-anagram [s w]
  (and
    (not= s w)
    (= (sorted-lowered s) (sorted-lowered w))))

(defn anagrams-for [s words]
  (filter (partial is-anagram s) words))
