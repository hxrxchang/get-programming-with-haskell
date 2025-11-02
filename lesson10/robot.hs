-- コンストラクタ
robot (name, attack, hp) = \message -> message (name, attack, hp)

-- robotのクロージャを作成
killerRobot = robot ("Kill3r", 25, 200)

name (n, _, _) = n
attack (_, a, _) = a
hp (_, _, hp) = hp

-- getter関数
getName aRobot = aRobot name
getAttack aRobot = aRobot attack
getHP aRobot = aRobot hp

-- setter
setName aRobot newName = aRobot (\(_, a, h) -> robot (newName, a, h))
setAttack aRobot newAttack = aRobot (\(n, _, h) -> robot (n, newAttack, h))
setHP aRobot newHP = aRobot (\(n, a, _) -> robot (n, a, newHP))

-- 出力(デバッグ用)
printRobot aRobot = aRobot(\(n, a, h) -> n ++ " attack:" ++ show a ++ " hp:" ++ show h)

-- robotにダメージを与える
damage aRobot attackDamage = aRobot (\(n,a, h) -> robot (n, a, h-attackDamage))

-- aRobotがdefenderに攻撃する
fight aRobot defender = damage defender attack
    where attack = if getHP aRobot > 10
                     then getAttack aRobot
                     else 0

-- 対戦相手を作成
gentleGiant = robot ("Mr. Friendly", 10, 300)

-- 対戦シミュレーション
gentleGiantRound1 = fight killerRobot gentleGiant
killerRobotRound1 = fight gentleGiant killerRobot
gentleGiantRound2 = fight killerRobotRound1 gentleGiantRound1
killerRobotRound2 = fight gentleGiantRound1 killerRobotRound1
finalKillerRobot = killerRobotRound2
finalGiant = gentleGiantRound2


fastRobot = robot ("Speedy", 15, 40)
slowRobot = robot ("Slowpoke", 20, 30)

fastRobotRound3 = fight slowRobotRound3 fastRobotRound2
fastRobotRound2 = fight slowRobotRound2 fastRobotRound1
fastRobotRound1 = fight slowRobotRound1 fastRobot
slowRobotRound2 = fight fastRobotRound1 slowRobotRound1
slowRobotRound3 = fight fastRobotRound2 slowRobotRound2
slowRobotRound1 = fight fastRobot slowRobot
