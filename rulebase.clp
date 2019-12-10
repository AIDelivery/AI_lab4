(deftemplate node
  (slot depth
    (type INTEGER)
    (default 0)
  )
  (slot parent
    (type FACT-ADDRESS SYMBOL)
    (default no-parent)
    (allowed-symbols no-parent)
  )
  (slot matrix
    (type SYMBOL)
    (default s123456780)
  )

  ;(slot node_n
  ;  (default-dynamic (gensym))
  ;  (create-accessor read)
  ;)
)
