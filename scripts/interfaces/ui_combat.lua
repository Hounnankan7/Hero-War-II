--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "scripts/player"
    require "scripts/ennemie"
    require "scripts/trophees"



--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------



--MES FONCTIONS CREES------------------------------------------------------------------------

    function ui_Combat_Init()

        --PlayerCreation()
        --EnnemyCreation()

        --INFOS PLAYERS ET ENNEMIES
            ui_combat_player = {}
            --Cote Players
            ui_combat_player.name = joueur.name
            ui_combat_player.level = "LVL: "..joueur.level.."/"..joueur.max_level
            ui_combat_player.exp = "EXP: "..joueur.exp_actuel.."/"..joueur.exp_next_level
            ui_combat_player.hp = "HP: "..joueur.health_point.."/"..joueur.max_health_point
            ui_combat_player.mp = "TP: "..joueur.magic_point.."/"..joueur.max_magic_point
            ui_combat_player.attack = "ATK: "..joueur.attack_point.."/"..joueur.max_attack_point
            ui_combat_player.defense = "DEF: "..joueur.defense_point.."/"..joueur.max_defense_point

            --Cote Ennemies
            ui_combat_ennemy = {}
            ui_combat_ennemy.name = ennemie.name
            ui_combat_ennemy.hp = "HP: "..ennemie.health_point.."/"..ennemie.max_health_point
            ui_combat_ennemy.mp = "TP: "..ennemie.magic_point.."/"..ennemie.max_magic_point
            ui_combat_ennemy.attack = "ATK: "..ennemie.attack_point.."/"..ennemie.max_attack_point
            ui_combat_ennemy.defense = "DEF: "..ennemie.defense_point.."/"..ennemie.max_defense_point
	        ui_combat_ennemy.exp_loot = "EXP LOOT: "..ennemie.exp_loot

            
        --LES BOUTONS D'ACTIONS
        ui_action = {}
        ui_action.normal_attack = love.graphics.newImage("assets/icons/actions/sword.png")
        ui_action.skill_1 = love.graphics.newImage("assets/icons/actions/skill1.png")
        ui_action.skill_2 = love.graphics.newImage("assets/icons/actions/skill2.png")
        ui_action.defense = love.graphics.newImage("assets/icons/actions/shield.png")
        ui_action.run = love.graphics.newImage("assets/icons/run.png")
        ui_action.battle_number = battle_number

        --INVENTAIRE
        ui_inventaire = {}
        ui_inventaire.item_hp = love.graphics.newImage("assets/icons/Potion.png")
        ui_inventaire.item_attack = love.graphics.newImage("assets/icons/Ketchup.png")
        ui_inventaire.item_defense = love.graphics.newImage("assets/icons/Read bottle.png")
        ui_inventaire.item_mp = love.graphics.newImage("assets/icons/Card.png")
        love.graphics.print("x"..nbr_item.hp, 14*tileSize, 45*tileSize)
        love.graphics.print("x"..nbr_item.hp_2, 18*tileSize, 45*tileSize)
        love.graphics.print("x"..nbr_item.mp_2, 22*tileSize, 45*tileSize)
        love.graphics.print("x"..nbr_item.mp, 26*tileSize, 45*tileSize)

        --ui_text
        ui_text = {}
        ui_text.turn =""
        ui_text.action =""

    end

    function ui_Combat_Update()

        --PlayerCreation()
        --EnnemyCreation()

        --INFOS PLAYERS ET ENNEMIES
            ui_combat_player = {}
            --Cote Players
            ui_combat_player.name = joueur.name
            ui_combat_player.level = "LVL: "..joueur.level.."/"..joueur.max_level
            ui_combat_player.exp = "EXP: "..joueur.exp_actuel.."/"..joueur.exp_next_level
            ui_combat_player.hp = "HP: "..joueur.health_point.."/"..joueur.max_health_point
            ui_combat_player.mp = "TP: "..joueur.magic_point.."/"..joueur.max_magic_point
            ui_combat_player.attack = "ATK: "..joueur.attack_point
            ui_combat_player.defense = "DEF: "..joueur.defense_point

            --Cote Ennemies
            ui_combat_ennemy = {}
            ui_combat_ennemy.name = ennemie.name
            ui_combat_ennemy.hp = "HP: "..ennemie.health_point.."/"..ennemie.max_health_point
            ui_combat_ennemy.mp = "TP: "..ennemie.magic_point.."/"..ennemie.max_magic_point
            ui_combat_ennemy.attack = "ATK: "..ennemie.attack_point
            ui_combat_ennemy.defense = "DEF: "..ennemie.defense_point
	        ui_combat_ennemy.exp_loot = "EXP LOOT: "..ennemie.exp_loot

            
        --LES BOUTONS D'ACTIONS
        ui_action.battle_number = battle_number

        --INVENTAIRE
        love.graphics.print("x"..nbr_item.hp, 14*tileSize, 43*tileSize)
        love.graphics.print("x"..nbr_item.hp_2, 18*tileSize, 43*tileSize)
        love.graphics.print("x"..nbr_item.mp_2, 22*tileSize, 43*tileSize)
        love.graphics.print("x"..nbr_item.mp, 26*tileSize, 43*tileSize)

        --ui_text

    end
    
    function draw_Ui_Combat()
        --Player
        PlayerDraw() -- Draw the Player
        love.graphics.setFont(font_third)
        love.graphics.print(ui_combat_player.name, 12*tileSize, 22*tileSize)
        love.graphics.print(ui_combat_player.level, 12*tileSize, 24*tileSize)
        love.graphics.print(ui_combat_player.exp, 12*tileSize, 26*tileSize)
        love.graphics.print(ui_combat_player.hp, 12*tileSize, 28*tileSize)
        love.graphics.print(ui_combat_player.mp, 12*tileSize, 30*tileSize)
        love.graphics.print(ui_combat_player.attack, 12*tileSize, 32*tileSize)
        love.graphics.print(ui_combat_player.defense, 12*tileSize, 34*tileSize)

        --Ennemy
        EnnemyDraw() -- Draw the ennemy
        love.graphics.setFont(font_third)
        love.graphics.print(ui_combat_ennemy.name, 44*tileSize, 22*tileSize)
        love.graphics.print(ui_combat_ennemy.hp, 44*tileSize, 24*tileSize)
        love.graphics.print(ui_combat_ennemy.mp, 44*tileSize, 26*tileSize)
        love.graphics.print(ui_combat_ennemy.attack, 44*tileSize, 28*tileSize)
        love.graphics.print(ui_combat_ennemy.defense, 44*tileSize, 30*tileSize)
        love.graphics.print(ui_combat_ennemy.exp_loot, 44*tileSize, 32*tileSize)

        --Just the middle rectangle
        love.graphics.rectangle("line", 30*tileSize, 38*tileSize, 64, 64)
        love.graphics.print("BATTLE", 30.2*tileSize, 37*tileSize)
        love.graphics.print(ui_action.battle_number, 31.5*tileSize, 39.5*tileSize)


        --Bouton d'action
        love.graphics.setColor(1, 1, 1)
        love.graphics.setFont(font_third)
        love.graphics.print("Actions", 40*tileSize, 37*tileSize)
        love.graphics.rectangle("line", 36*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 40*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 40*tileSize, 44*tileSize, 32, 32)--
        love.graphics.rectangle("line", 44*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 48*tileSize, 40*tileSize, 32, 32)

        love.graphics.draw(ui_action.normal_attack, 36.1*tileSize, 40.2*tileSize)
        love.graphics.draw(ui_action.skill_1, 40*tileSize, 40*tileSize)
        love.graphics.draw(ui_action.skill_2, 40.05*tileSize, 44*tileSize)--
        love.graphics.draw(ui_action.defense, 44.1*tileSize, 40.2*tileSize)
        love.graphics.draw(ui_action.run, 47.6*tileSize, 39.7*tileSize)

        love.graphics.setFont(font_quard)
        love.graphics.print("Attack", 35.5*tileSize, 38.8*tileSize)
        love.graphics.print("Skill.1", 39.2*tileSize, 38.8*tileSize)
        love.graphics.print("Skill.2", 39.2*tileSize, 42.8*tileSize)--
        love.graphics.print("Defend", 43.5*tileSize, 38.8*tileSize)
        love.graphics.print("Run", 48.2*tileSize, 38.8*tileSize)


        --Bouton inventaire
        love.graphics.setColor(1, 1, 1)
        love.graphics.setFont(font_third)
        love.graphics.print("Inventory", 18*tileSize, 37*tileSize)
        love.graphics.rectangle("line", 14*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 18*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 22*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 26*tileSize, 40*tileSize, 32, 32)
        love.graphics.draw(ui_inventaire.item_hp, 14*tileSize, 40*tileSize)
        love.graphics.draw(ui_inventaire.item_attack, 18*tileSize, 40*tileSize)
        love.graphics.draw(ui_inventaire.item_defense, 22*tileSize, 40*tileSize)
        love.graphics.draw(ui_inventaire.item_mp, 26*tileSize, 40*tileSize)
        love.graphics.setFont(font_quard)
        love.graphics.print("HP+10", 14*tileSize, 38.8*tileSize)
        love.graphics.print("HP+150", 18*tileSize, 38.8*tileSize)
        love.graphics.print("TP+10", 22*tileSize, 38.8*tileSize)
        love.graphics.print("TP+150", 26*tileSize, 38.8*tileSize)
        love.graphics.setFont(font_third)
        love.graphics.print("x"..nbr_item.hp, 14*tileSize, 43*tileSize)
        love.graphics.print("x"..nbr_item.hp_2, 18*tileSize, 43*tileSize)
        love.graphics.print("x"..nbr_item.mp_2, 22*tileSize, 43*tileSize)
        love.graphics.print("x"..nbr_item.mp, 26*tileSize, 43*tileSize)
        
        --ui_text
        love.graphics.setFont(font_quard)
        love.graphics.print("Previous ations : ", 29.2*tileSize, 4*tileSize)
        --love.graphics.print(ui_text.turn, 27*tileSize, 4*tileSize)
        love.graphics.print(ui_text.action , 24.5*tileSize, 6*tileSize)


    end

    function action_UI_Combat(interface_choice,dt)
        return interface_choice
    end
---------------------------------------------------------------------------------------------