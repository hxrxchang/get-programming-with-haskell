import Data.List

ifEvenInc myFunction x = if even x
               then myFunction x
               else x

-- ifEvenInc (\x -> x*2) 6

author = ("Will", "Kurt")
-- fst author
-- snd author

names = [("Ian", "Curtis"),
    ("Bernard", "Sumner"),
    ("Peter", "Hook"),
    ("Stephen", "Morris")]

compareLastNames name1 name2 = if lastName1 > lastName2
                            then GT
                            else if lastName1 < lastName2
                                 then LT
                                 else if firstName1 > firstName2
                                      then GT
                                      else if firstName1 < firstName2
                                           then LT
                                           else EQ
    where lastName1 = snd name1
          lastName2 = snd name2
          firstName1 = fst name1
          firstName2 = fst name2

-- sortBy compareLastNames names
