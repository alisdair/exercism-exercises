(ns bob)

(defn- has-upper? [s]
  (some #(Character/isUpperCase %) s))

(defn- has-lower? [s]
  (some #(Character/isLowerCase %) s))

(defn- is-shouting? [s]
  (and (has-upper? s) (not (has-lower? s))))

(defn- is-question? [s]
  (= (last s) \?))

(defn response-for [s]
  (cond
    (clojure.string/blank? s) "Fine. Be that way!"
    (is-shouting? s) "Woah, chill out!"
    (is-question? s) "Sure."
    :else "Whatever."))
