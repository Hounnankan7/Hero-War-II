--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "my_bdd/character_db"
    require "my_bdd/ennemies_db"
    require "scripts/player"
    require "scripts/ennemie"



--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------



--MES FONCTIONS CREES------------------------------------------------------------------------
    
    function Ui_Player_Selection_Init()
        ui_player_selection = {}
        ui_player_selection.image_1 = love.graphics.newImage("my_bdd/characters/Swordman.png")
        ui_player_selection.character_name_1 = "Motoyasu Matsudaira"
        ui_player_selection.character_class_1 = "Class : ".."Swordman"
        ui_player_selection.character_hp_1 = "HP : ".."80"
        ui_player_selection.character_mp_1 = "TP : ".."30"
        ui_player_selection.character_atk_1 = "ATK : ".."50"
        ui_player_selection.character_def_1 = "DEF : ".."40"
        ui_player_selection.character_description_1 = "Focus on ATK, DEF"
        ui_player_selection.character_evolution_mode_1 = "Easy to level UP"


        ui_player_selection.image_2 = love.graphics.newImage("my_bdd/characters/Spearman.png")
        ui_player_selection.character_name_2 = "Matabei Goto"
        ui_player_selection.character_class_2 = "Class : ".."Spearman"
        ui_player_selection.character_hp_2 = "HP : ".."70"
        ui_player_selection.character_mp_2 = "TP : ".."30"
        ui_player_selection.character_atk_2 = "ATK : ".."45"
        ui_player_selection.character_def_2 = "DEF : ".."55"
        ui_player_selection.character_description_2 = "Focus on DEF, ATK"
        ui_player_selection.character_evolution_mode_2 = "Easy to level UP"

        ui_player_selection.image_3 = love.graphics.newImage("my_bdd/characters/Gunner.png")
        ui_player_selection.character_name_3 = "Takahisa Shimazu"
        ui_player_selection.character_class_3 = "Class : ".."Gunner"
        ui_player_selection.character_hp_3 = "HP : ".."75"
        ui_player_selection.character_mp_3 = "TP : ".."55"
        ui_player_selection.character_atk_3 = "ATK : ".."30"
        ui_player_selection.character_def_3 = "DEF : ".."40"
        ui_player_selection.character_description_3 = "Focus on DEF, TP"
        ui_player_selection.character_evolution_mode_3 = "Easy to level UP"

        ui_player_selection.image_4 = love.graphics.newImage("my_bdd/characters/Ninja.png")
        ui_player_selection.character_name_4 = "Kotaro Fuma"
        ui_player_selection.character_class_4 = "Class : ".."Ninja"
        ui_player_selection.character_hp_4 = "HP : ".."60"
        ui_player_selection.character_mp_4 = "TP : ".."60"
        ui_player_selection.character_atk_4 = "ATK : ".."40"
        ui_player_selection.character_def_4 = "DEF : ".."40"
        ui_player_selection.character_description_4 = "Focus on ATK, TP"
        ui_player_selection.character_evolution_mode_4 = "Hard to level UP"
        
    end

    function draw_Ui_Player_Selection()
        
        love.graphics.setFont(font_second)
        love.graphics.print("CHOOSE YOUR CHARACTER", 19*tileSize, 7*tileSize)
        love.graphics.setFont(font_third)

        love.graphics.setColor(1, 1, 1)
        love.graphics.rectangle("line", 1*tileSize, 10*tileSize, 14*tileSize, 25*tileSize)
        love.graphics.rectangle("line", 17*tileSize, 10*tileSize, 14*tileSize, 25*tileSize)
        love.graphics.rectangle("line", 33*tileSize, 10*tileSize, 14*tileSize, 25*tileSize)
        love.graphics.rectangle("line", 49*tileSize, 10*tileSize, 14*tileSize, 25*tileSize)

        love.graphics.rectangle("line", 1*tileSize, 36*tileSize, 10*tileSize, 3*tileSize)
        love.graphics.rectangle("line", 17*tileSize, 36*tileSize, 10*tileSize, 3*tileSize)
        love.graphics.rectangle("line", 33*tileSize, 36*tileSize, 10*tileSize, 3*tileSize)
        love.graphics.rectangle("line", 49*tileSize, 36*tileSize, 10*tileSize, 3*tileSize)

        love.graphics.setFont(font_second)
        love.graphics.print("CHOOSE", 1.5*tileSize, 37*tileSize)
        love.graphics.print("CHOOSE", 17.5*tileSize, 37*tileSize)
        love.graphics.print("CHOOSE", 33.5*tileSize, 37*tileSize)
        love.graphics.print("CHOOSE", 49.5*tileSize, 37*tileSize)
        
        --DESSIN DES CHARACTERS OU CHOISIR
            love.graphics.setFont(font_third)
            --1rst character
            love.graphics.draw(ui_player_selection.image_1, 5*tileSize, 13*tileSize, 0, 1.5)
            love.graphics.print(ui_player_selection.character_name_1, 2*tileSize, 20*tileSize)
            love.graphics.print(ui_player_selection.character_class_1, 2*tileSize, 22*tileSize)
            love.graphics.print(ui_player_selection.character_hp_1, 2*tileSize, 24*tileSize)
            love.graphics.print(ui_player_selection.character_mp_1, 2*tileSize, 26*tileSize)
            love.graphics.print(ui_player_selection.character_atk_1, 2*tileSize, 28*tileSize)
            love.graphics.print(ui_player_selection.character_def_1, 2*tileSize, 30*tileSize)
            love.graphics.print(ui_player_selection.character_description_1, 2*tileSize, 32*tileSize)
            love.graphics.print(ui_player_selection.character_evolution_mode_1, 2*tileSize, 34*tileSize)

            --2nd character
            love.graphics.draw(ui_player_selection.image_2, 21*tileSize, 12*tileSize, 0, 1.5)
            love.graphics.print(ui_player_selection.character_name_2, 18*tileSize, 20*tileSize)
            love.graphics.print(ui_player_selection.character_class_2, 18*tileSize, 22*tileSize)
            love.graphics.print(ui_player_selection.character_hp_2, 18*tileSize, 24*tileSize)
            love.graphics.print(ui_player_selection.character_mp_2, 18*tileSize, 26*tileSize)
            love.graphics.print(ui_player_selection.character_atk_2, 18*tileSize, 28*tileSize)
            love.graphics.print(ui_player_selection.character_def_2, 18*tileSize, 30*tileSize)
            love.graphics.print(ui_player_selection.character_description_2, 18*tileSize, 32*tileSize)
            love.graphics.print(ui_player_selection.character_evolution_mode_2, 18*tileSize, 34*tileSize)

            --3dr character
            love.graphics.draw(ui_player_selection.image_3, 37*tileSize, 10*tileSize, 0, 1.5)
            love.graphics.print(ui_player_selection.character_name_3, 34*tileSize, 20*tileSize)
            love.graphics.print(ui_player_selection.character_class_3, 34*tileSize, 22*tileSize)
            love.graphics.print(ui_player_selection.character_hp_3, 34*tileSize, 24*tileSize)
            love.graphics.print(ui_player_selection.character_mp_3, 34*tileSize, 26*tileSize)
            love.graphics.print(ui_player_selection.character_atk_3, 34*tileSize, 28*tileSize)
            love.graphics.print(ui_player_selection.character_def_3, 34*tileSize, 30*tileSize)
            love.graphics.print(ui_player_selection.character_description_3, 34*tileSize, 32*tileSize)
            love.graphics.print(ui_player_selection.character_evolution_mode_3, 34*tileSize, 34*tileSize)

            --4th character
            love.graphics.draw(ui_player_selection.image_4, 52*tileSize, 10*tileSize, 0, 1.5)
            love.graphics.print(ui_player_selection.character_name_4, 50*tileSize, 20*tileSize)
            love.graphics.print(ui_player_selection.character_class_4, 50*tileSize, 22*tileSize)
            love.graphics.print(ui_player_selection.character_hp_4, 50*tileSize, 24*tileSize)
            love.graphics.print(ui_player_selection.character_mp_4, 50*tileSize, 26*tileSize)
            love.graphics.print(ui_player_selection.character_atk_4, 50*tileSize, 28*tileSize)
            love.graphics.print(ui_player_selection.character_def_4, 50*tileSize, 30*tileSize)
            love.graphics.print(ui_player_selection.character_description_4, 50*tileSize, 32*tileSize)
            love.graphics.print(ui_player_selection.character_evolution_mode_4, 50*tileSize, 34*tileSize)

    end


    function action_UI_Player_Selection (interface_choice, dt)

        if interface_choice == 2 and love.mouse.isDown(1) then

            -- Récupération de la position du curseur en pixels
            local x = love.mouse.getX()
            local y = love.mouse.getY()
            -- Conversion pixer vers cases de la grille
            mousePosX = math.floor((x/16)+1)
            mousePosY = math.floor((y/16)+1)

            battle_number = 1
            trophee.section_number = trophee.section_number + 1

            if mousePosY >= 36 and mousePosY <= 39 and mousePosX >= 1 and mousePosX <= 11 then
                choix_character = 1
                PlayerCreation()
                EnnemyCreation()
                interface_choice = 3
                print(interface_choice)
                print(choix_character)
                delay_s(0.9)
            elseif mousePosY >= 36 and mousePosY <= 39 and mousePosX >= 17 and mousePosX <= 27 then
                choix_character = 2
                PlayerCreation()
                EnnemyCreation()
                interface_choice = 3
                print(interface_choice)
                print(choix_character)
                delay_s(0.9)
            elseif mousePosY >= 36 and mousePosY <= 39 and mousePosX >= 33 and mousePosX <= 43 then
                choix_character = 3
                PlayerCreation()
                EnnemyCreation()
                interface_choice = 3
                print(interface_choice)
                print(choix_character)
                delay_s(0.9)
            elseif mousePosY >= 36 and mousePosY <= 39 and mousePosX >= 49 and mousePosX <= 59 then
                choix_character = 4
                PlayerCreation()
                EnnemyCreation()
                interface_choice = 3
                print(interface_choice)
                print(choix_character)
                delay_s(0.9)
            end

        end
       return interface_choice
    end

    
---------------------------------------------------------------------------------------------