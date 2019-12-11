(defclass node (is-a USER)
  (slot depth
    (type INTEGER)
    (storage local)
    (create-accessor read-write)
    (default 0)
  )
  (slot parent
    (type FACT-ADDRESS SYMBOL)
    (storage local)
    (default no-parent)
    (create-accessor read-write)
    (allowed-symbols no-parent)
  )
  (slot matrix
    (type SYMBOL)
    (storage local)
    (create-accessor read-write)
    (default s123456780)
  )

  (slot node_n
    (default-dynamic (gensym))
    (storage local)
    (create-accessor read-write)
  )
)

(deftemplate queue
  (slot nxt
    (type FACT-ADDRESS SYMBOL))
  (slot last
    (type FACT-ADDRESS SYMBOL))
)

(deffunction find-index (?str ?sub)
  (bind ?index (str-index ?str ?sub))
  (if (not (str-index ?str ?sub))
  then (printout t "[Error. Can't find " ?sub "]" crlf)
  else (return ?index))
)

(deffunction BFS (?root)
)
