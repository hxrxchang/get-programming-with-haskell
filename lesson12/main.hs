type FirstName = String
type LastName = String
type Age = Int
type Height = Int

patientInfo :: PatientName -> Age -> Height -> String
patientInfo patientName age height = name ++ " " ++ ageHeight
    where name = lastName patientName ++ "," ++ firstName patientName
          ageHeight = "(" ++ show age ++ "," ++ show height ++ ")"

type PatientName = (String, String)
firstName :: PatientName -> String
firstName name = fst name

lastName :: PatientName -> String
lastName name = snd name

patientInfoExample :: String
patientInfoExample = patientInfo ("John", "Doe") 30 175

data RhType = Pos | Neg
data ABOType = A | B | AB | O
data BloodType = BloodType ABOType RhType

patient1BT :: BloodType
patient1BT = BloodType A Pos

patient2BT :: BloodType
patient2BT = BloodType O Neg

patient3BT :: BloodType
patient3BT = BloodType AB Pos

showRh :: RhType -> String
showRh Pos = "+"
showRh Neg = "-"

showABO :: ABOType -> String
showABO A = "A"
showABO B = "B"
showABO AB = "AB"
showABO O = "O"

showBloodType :: BloodType -> String
showBloodType (BloodType abo rh) = showABO abo ++ showRh rh

canDonateTo :: BloodType -> BloodType -> Bool
canDonateTo (BloodType O _) _ = True -- どの血液型にも輸血できる
canDonateTo _ (BloodType AB _) = True -- どの血液型からでも輸血できる
canDonateTo (BloodType A _) (BloodType A _) = True -- A型同士は輸血できる
canDonateTo (BloodType B _) (BloodType B _) = True -- B型同士は輸血できる
canDonateTo _ _ = False -- その他の組み合わせは不可

data Name = Name (String, String)
data Sex = Male | Female
data Patient = Patient {
    name :: Name
    , sex :: Sex
    , age :: Int
    , height :: Int
    , weight :: Int
    , bloodType :: BloodType
}

johnDoe :: Patient
johnDoe = Patient {
    name = Name ("John", "Doe")
    , sex = Male
    , age = 30
    , height = 175
    , weight = 70
    , bloodType = BloodType A Pos
}
