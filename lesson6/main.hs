simple x = x
longList = [1 ..]
stillLongList = simple longList

respond phrase = if '!' `elem` phrase
    then "wow!"
    else "uh, okay."
