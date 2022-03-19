--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "scripts/player"
    require "scripts/ennemie"



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
            ui_combat_player.mp = "TechP: "..joueur.magic_point.."/"..joueur.max_magic_point
            ui_combat_player.attack = "ATK: "..joueur.attack_point.."/"..joueur.max_attack_point
            ui_combat_player.defense = "DEF: "..joueur.defense_point.."/"..joueur.max_defense_point

            --Cote Ennemies
            ui_combat_ennemy = {}
            ui_combat_ennemy.name = ennemie.name
            ui_combat_ennemy.hp = "HP: "..ennemie.health_point.."/"..ennemie.max_health_point
            ui_combat_ennemy.mp = "TechP: "..ennemie.magic_point.."/"..ennemie.max_magic_point
            ui_combat_ennemy.attack = "ATK: "..ennemie.attack_point.."/"..ennemie.max_attack_point
            ui_combat_ennemy.defense = "DEF: "..ennemie.defense_point.."/"..ennemie.max_defense_point
	        ui_combat_ennemy.exp_loot = "EXP LOOT: "..ennemie.exp_loot

            
        --LES BOUTONS D'ACTIONS
        ui_action = {}
        ui_action.normal_attack = love.graphics.newImage("assets/icons/normal_attack_32.png")
        ui_action.special_attack = love.graphics.newImage("assets/icons/special_attack_32.png")
        ui_action.defense = love.graphics.newImage("assets/icons/shield.png")
        ui_action.run = love.graphics.newImage("assets/icons/run.png")

        --INVENTAIRE
        ui_inventaire = {}
        ui_inventaire.item_hp = love.graphics.newImage("assets/icons/Potion.png")
        ui_inventaire.item_attack = love.graphics.newImage("assets/icons/Ketchup.png")
        ui_inventaire.item_defense = love.graphics.newImage("assets/icons/Read bottle.png")
        ui_inventaire.item_mp = love.graphics.newImage("assets/icons/Card.png")
        love.graphics.print("x"..nbr_item.hp, 14*tileSize, 43*tileSize)
        love.graphics.print("x"..nbr_item.atk, 18*tileSize, 43*tileSize)
        love.graphics.print("x"..nbr_item.def, 22*tileSize, 43*tileSize)
        love.graphics.print("x"..nbr_item.mp, 26*tileSize, 43*tileSize)

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
            ui_combat_player.mp = "TechP: "..joueur.magic_point.."/"..joueur.max_magic_point
            ui_combat_player.attack = "ATK: "..joueur.attack_point.."/"..joueur.max_attack_point
            ui_combat_player.defense = "DEF: "..joueur.defense_point.."/"..joueur.max_defense_point

            --Cote Ennemies
            ui_combat_ennemy = {}
            ui_combat_ennemy.name = ennemie.name
            ui_combat_ennemy.hp = "HP: "..ennemie.health_point.."/"..ennemie.max_health_point
            ui_combat_ennemy.mp = "TechP: "..ennemie.magic_point.."/"..ennemie.max_magic_point
            ui_combat_ennemy.attack = "ATK: "..ennemie.attack_point.."/"..ennemie.max_attack_point
            ui_combat_ennemy.defense = "DEF: "..ennemie.defense_point.."/"..ennemie.max_defense_point
	        ui_combat_ennemy.exp_loot = "EXP LOOT: "..ennemie.exp_loot

            
        --LES BOUTONS D'ACTIONS
        

        --INVENTAIRE
        love.graphics.print("x"..nbr_item.hp, 14*tileSize, 43*tileSize)
        love.graphics.print("x"..nbr_item.atk, 18*tileSize, 43*tileSize)
        love.graphics.print("x"..nbr_item.def, 22*tileSize, 43*tileSize)
        love.graphics.print("x"..nbr_item.mp, 26*tileSize, 43*tileSize)
        

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


        --Bouton d'action
        love.graphics.setColor(1, 1, 1)
        love.graphics.setFont(font_third)
        love.graphics.print("Actions", 40*tileSize, 38*tileSize)
        love.graphics.rectangle("line", 36*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 40*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 44*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 48*tileSize, 40*tileSize, 32, 32)
        love.graphics.draw(ui_action.normal_attack, 36*tileSize, 40*tileSize)
        love.graphics.draw(ui_action.special_attack, 40*tileSize, 40*tileSize)
        love.graphics.draw(ui_action.defense, 44*tileSize, 40*tileSize)
        love.graphics.draw(ui_action.run, 48*tileSize, 40*tileSize)


        --Bouton inventaire
        love.graphics.setColor(1, 1, 1)
        love.graphics.setFont(font_third)
        love.graphics.print("Inventaire", 18*tileSize, 38*tileSize)
        love.graphics.rectangle("line", 14*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 18*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 22*tileSize, 40*tileSize, 32, 32)
        love.graphics.rectangle("line", 26*tileSize, 40*tileSize, 32, 32)
        love.graphics.draw(ui_inventaire.item_hp, 14*tileSize, 40*tileSize)
        love.graphics.draw(ui_inventaire.item_attack, 18*tileSize, 40*tileSize)
        love.graphics.draw(ui_inventaire.item_defense, 22*tileSize, 40*tileSize)
        love.graphics.draw(ui_inventaire.item_mp, 26*tileSize, 40*tileSize)
        love.graphics.print("x"..nbr_item.hp, 14*tileSize, 43*tileSize)
        love.graphics.print("x"..nbr_item.atk, 18*tileSize, 43*tileSize)
        love.graphics.print("x"..nbr_item.def, 22*tileSize, 43*tileSize)
        love.graphics.print("x"..nbr_item.mp, 26*tileSize, 43*tileSize)
        

    end

    function action_UI_Combat(interface_choice,dt)
        return interface_choice
    end
---------------------------------------------------------------------------------------------