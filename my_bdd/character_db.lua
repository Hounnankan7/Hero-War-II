
--LES VARIABLES------------------------------------------------------------------------------

player = {}
player.id = 0 
player.class = ""
player.name = ""
player.image = ""
player.max_health_point = 0
player.magic_point = 0
player.attack_point = 0
player.max_attack_point = 0
player.defense_point = 0
player.max_defense_point = 0
player.level = 0
player.max_level = 0
player.exp_actuel = 0
player.exp_next_level = 0

---------------------------------------------------------------------------------------------

--STATS/CLASSE---------------------------------------------------------
    
    --------------ATK----DEF----MAG------LVL SYSTEM-----
    -- SWORDMAN    +      0      -     Easy to level
    -- SPEARMAN    0      +      -     Easy to level
    -- GUNNER      -      0      +     Easy to level
    -- NINJA       +      0      +     Hard to level

  -- NB : + point fort, - point faible, 0 point sans modif

------------------------------------------------------------------------

---FONCTION D4EVOLUTION EXP----------------

-------------------------------------------


--CREATION DES CHARACTERS PLAYEABLE ---------------------------------------------------------------------

function CharacterSelection (db_character_choice) -- Fonction de choix du character du joueur en fonction de son choix en fonction de la valeur de db_character_choice

    --Les constantes de calcul
    const_1 = 20 --cnst pour level up
    const_2 = 100 --cnst pour level up
    const_3 = 250 --cnst pour level up

    if db_character_choice == 1 then -- Choix du SWORDMAN

        player.id = 1 
        player.class = "Swordman"
        player.name = "Motoyasu Matsudaira"
        player.image = love.graphics.newImage("my_bdd/characters/Swordman.png")
        player.max_health_point = 80
        player.health_point = 80
        player.max_magic_point = 30
        player.magic_point = 30
        player.attack_point = 50
        player.max_attack_point = 0
        player.defense_point = 40
        player.max_defense_point = 0
        player.level = 1
        player.max_level = 100
        player.exp_actuel = 0
        player.exp_next_level = math.floor( (const_2 * math.sqrt(player.level)) + const_1  )

    elseif db_character_choice == 2 then --Choix du SPEARMAN

        player.id = 2 
        player.class = "Spearman"
        player.name = "Matabei Goto"
        player.image = love.graphics.newImage("my_bdd/characters/Spearman.png")
        player.max_health_point = 70
        player.health_point = 70
        player.max_magic_point = 30
        player.magic_point = 30
        player.attack_point = 45
        player.max_attack_point = 0
        player.defense_point = 55
        player.max_defense_point = 0
        player.level = 1
        player.max_level = 100
        player.exp_actuel = 0
        player.exp_next_level = math.floor( (const_2 * math.sqrt(player.level)) + const_1  )

    elseif db_character_choice == 3 then -- Choix du GUNNER

        player.id = 3 
        player.class = "Gunner"
        player.name = "Takahisa Shimazu"
        player.image = love.graphics.newImage("my_bdd/characters/Gunner.png")
        player.max_health_point = 75
        player.health_point = 75
        player.max_magic_point = 55
        player.magic_point = 55
        player.attack_point = 30
        player.max_attack_point = 0
        player.defense_point = 40
        player.max_defense_point = 0
        player.level = 1
        player.max_level = 100
        player.exp_actuel = 0
        player.exp_next_level = math.floor( (const_2 * math.sqrt(player.level)) + const_1  )

    elseif db_character_choice == 4 then -- Choix du NINJA

        player.id = 4 
        player.class = "Ninja"
        player.name = "Kotaro Fuma" 
        player.image = love.graphics.newImage("my_bdd/characters/Ninja.png")
        player.max_health_point = 60
        player.health_point = 60
        player.max_magic_point = 60
        player.magic_point = 60
        player.attack_point = 40
        player.max_attack_point = 0
        player.defense_point = 40
        player.max_defense_point = 0
        player.level = 1
        player.max_level = 100
        player.exp_actuel = 0
        player.exp_next_level = math.floor( (const_2 * math.sqrt(player.level)) + const_3  )

    end

end


---------------------------------------------------------------------------------------------