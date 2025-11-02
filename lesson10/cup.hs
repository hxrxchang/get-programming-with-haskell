cup flOz = \message -> message flOz

getOz aCup = aCup (\flOz -> flOz)

coffeeCup = cup 12

drink aCup ozDrank = if ozDiff >= 0
                     then cup ozDiff
                     else cup 0
    where flOz = getOz aCup
          ozDiff = flOz - ozDrank

afterBigGulp = drink coffeeCup 20

isEmpty aCup = getOz aCup == 0

afterManySips = foldl drink coffeeCup [1,1,1,1,1]

