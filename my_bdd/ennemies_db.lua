
--LES VARIABLES------------------------------------------------------------------------------

    monster = {}
    monster.id = 50 --Identification du monstre
    monster.name = "" --Nom du monstre
    monster.image = "" --Image du monstre
    monster.health_point = 50 --Point de vie a un moment t du monstre
    monster.max_health_point = 50 --Point de vie du monstre
    monster.magic_point = 50 --Point de magie du monstre
    monster.max_magic_point = 50 -- du monstre
    monster.attack_point = 50 --Point d'attaque du monstre
    monster.max_attack_point = 50 --Point d'attaque max atteignable du monstre
    monster.defense_point = 50 -- Point de défense de base du monstre
    monster.max_defense_point = 50 --Point de défense max atteignable du monstre
    monster.exp_loot = 50 --Expérience looter par un monstre du monstre


---------------------------------------------------------------------------------------------




--CREATION DES MONSTRES ---------------------------------------------------------------------

    function CreateMonster(random_monster) -- Fonction de creation des MONSTRES en se basant sur la valeur de random_monster

        -- random_monster varie entre 1 et 30 ==] pour 6 différent type de monstre----------------------------------------------
        -- Intervalle pour les monstres : 
        --Monstre 1 : Swordman 15% = 1 2 3 4 5
        --Monstre 2 : Spearman 15% = 6 7 8 9 10
        --Monstre 3 : Musketeer 15% = 11 12 13 14 15
        --Monstre 4 : Swordman Master 10% = 16 17 18
        --Monstre 5 : Spearman Master 10% = 19 20 21
        --Monstre 6 : Musketeer Master 10% = 22 23 24
        --Monstre 7 : legendary 1 10% = 25 26 27
        --Monstre 8 : Legendary 2 5% = 28
        --Monstre 9 : Legendary 3 5% = 29
        --Monstre 10 : Emperor 5% = 30
        -------------------------------------------------------------------------------------------------------------------------
        
        if random_monster >= 1 and random_monster <= 5 then
            
            monster.id = 1
            monster.name = "Swordman"
            monster.image = love.graphics.newImage("my_bdd/monsters/Swordman.png")
            monster.health_point = 100
            monster.max_health_point = 100
            monster.magic_point = 50
            monster.max_magic_point = 50
            monster.attack_point = 20
            monster.max_attack_point = 20
            monster.defense_point = 20
            monster.max_defense_point = 20
            monster.exp_loot = 50

        elseif random_monster >= 6 and random_monster <= 10 then

            monster.id = 2
            monster.name = "Spearman"
            monster.image = love.graphics.newImage("my_bdd/monsters/Spearman.png")
            monster.health_point = 110
            monster.max_health_point = 110
            monster.magic_point = 45
            monster.max_magic_point = 45
            monster.attack_point = 19
            monster.max_attack_point = 19
            monster.defense_point = 22
            monster.max_defense_point = 22
            monster.exp_loot = 60

        elseif random_monster >= 11 and random_monster <= 13 then

            monster.id = 3
            monster.name = "Musketeer"
            monster.image = love.graphics.newImage("my_bdd/monsters/Musketeer.png")
            monster.health_point = 120
            monster.max_health_point = 120
            monster.magic_point = 60
            monster.max_magic_point = 60
            monster.attack_point = 22
            monster.max_attack_point = 22
            monster.defense_point = 25
            monster.max_defense_point = 25
            monster.exp_loot = 100

        elseif random_monster >= 14 and random_monster <= 15 then

            monster.id = 3
            monster.name = "Horse Unit"
            monster.image = love.graphics.newImage("my_bdd/monsters/Cavalier.png")
            monster.health_point = 170
            monster.max_health_point = 170
            monster.magic_point = 60
            monster.max_magic_point = 60
            monster.attack_point = 26
            monster.max_attack_point = 26
            monster.defense_point = 30
            monster.max_defense_point = 30
            monster.exp_loot = 130

        elseif random_monster >= 16 and random_monster <= 18 then

            monster.id = 4
            monster.name = "Swordman Master"
            monster.image = love.graphics.newImage("my_bdd/monsters/Swordman Master.png")
            monster.health_point = 340
            monster.max_health_point = 340
            monster.magic_point = 100
            monster.max_magic_point = 100
            monster.attack_point = 55
            monster.max_attack_point = 55
            monster.defense_point = 70
            monster.max_defense_point = 70
            monster.exp_loot = 140

        elseif random_monster >= 19 and random_monster <= 21 then

            monster.id = 5
            monster.name = "Spearman Master"
            monster.image = love.graphics.newImage("my_bdd/monsters/Spearman Master.png")
            monster.health_point = 350
            monster.max_health_point = 350
            monster.magic_point = 100
            monster.max_magic_point = 100
            monster.attack_point = 45
            monster.max_attack_point = 45
            monster.defense_point = 70
            monster.max_defense_point = 70
            monster.exp_loot = 160

        elseif random_monster >= 22 and random_monster <= 24 then

            monster.id = 6
            monster.name = "Elite Musketeer"
            monster.image = love.graphics.newImage("my_bdd/monsters/Musketeer Master.png")
            monster.health_point = 360
            monster.max_health_point = 360
            monster.magic_point = 150
            monster.max_magic_point = 150
            monster.attack_point = 50
            monster.max_attack_point = 50
            monster.defense_point = 80
            monster.max_defense_point = 80
            monster.exp_loot = 200

        elseif random_monster >= 25 and random_monster <= 27 then

            monster.id = 7
            monster.name = "Jubei Yagyu"
            monster.image = love.graphics.newImage("my_bdd/monsters/Jubei Yagyu.png")
            monster.health_point = 1300
            monster.max_health_point = 1300
            monster.magic_point = 200
            monster.max_magic_point = 200
            monster.attack_point = 150
            monster.max_attack_point = 150
            monster.defense_point = 140
            monster.max_defense_point = 140
            monster.exp_loot = 250

        elseif random_monster == 28 then

            monster.id = 8
            monster.name = "Musashi Miyamoto"
            monster.image = love.graphics.newImage("my_bdd/monsters/Musashi Miyamoto.png")
            monster.health_point = 1500
            monster.max_health_point = 1500
            monster.magic_point = 220
            monster.max_magic_point = 220
            monster.attack_point = 200
            monster.max_attack_point = 200
            monster.defense_point = 200
            monster.max_defense_point = 200
            monster.exp_loot = 280

        elseif random_monster == 29 then

            monster.id = 9
            monster.name = "Momotaro"
            monster.image = love.graphics.newImage("my_bdd/monsters/Momotaro.png")
            monster.health_point = 1500
            monster.max_health_point = 1500
            monster.magic_point = 250
            monster.max_magic_point = 250
            monster.attack_point = 240
            monster.max_attack_point = 240
            monster.defense_point = 200
            monster.max_defense_point = 200
            monster.exp_loot = 300

        elseif random_monster == 30 then

            monster.id = 10
            monster.name = "Nobunaga Oda"
            monster.image = love.graphics.newImage("my_bdd/monsters/Oda Nobunaga.png")
            monster.health_point = 3000
            monster.max_health_point = 300
            monster.magic_point = 500
            monster.max_magic_point = 500
            monster.attack_point = 300
            monster.max_attack_point = 300
            monster.defense_point = 340
            monster.max_defense_point = 340
            monster.exp_loot = 450

        end

    end


---------------------------------------------------------------------------------------------