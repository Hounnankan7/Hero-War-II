--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"



--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------



--MES FONCTIONS CREES------------------------------------------------------------------------

    function draw_Ui_victory()
        love.graphics.setColor(1, 1, 1)
        love.graphics.setFont(font_main)
        love.graphics.print("VICTORY", 16*tileSize, 12*tileSize)
        love.graphics.setFont(font_second)

        love.graphics.print("Enter another battle ?", 16*tileSize, 24*tileSize)
        love.graphics.print("YES", 16.2*tileSize, 26.5*tileSize)
        love.graphics.print("NO", 22.2*tileSize, 26.5*tileSize)
        love.graphics.rectangle("line", 16*tileSize, 26*tileSize, 4*tileSize, 2.5*tileSize)
        love.graphics.rectangle("line", 22*tileSize, 26*tileSize, 4*tileSize, 2.5*tileSize)
    end

    function victory(dt)
        if joueur.health_point <= 0 then

            joueur.health_point = 0
            my_turn = randomNumber(i, j)
            choix_UI = 5

            if choix_UI == 5 and love.mouse.isDown(1) then
            
                -- Récupération de la position du curseur en pixels
                local i = love.mouse.getX()
                local j = love.mouse.getY()
                -- Conversion pixer vers cases de la grille
                mousePosX_1 = math.floor((i/16)+1)
                mousePosY_1 = math.floor((j/16)+1)

                if mousePosY_1 >= 26 and mousePosY_1 <= 28.5 and mousePosX_1 >= 16 and mousePosX_1 <= 20 then
                    
                    PlayerCreation()
                    monster_choice = randomNumber(a, b)
                    EnnemyCreation()
                    battle_number = 1
                    delay_s(2)
                    choix_UI = 2

            
                elseif mousePosY_1 >= 26 and mousePosY_1 <= 28.5 and mousePosX_1 >= 22 and mousePosX_1 <= 26 then

                    PlayerCreation()
                    monster_choice = randomNumber(a, b)
                    EnnemyCreation()
                    battle_number = 1
                    delay_s(2)
                    choix_UI = 1

                end
                
            end
            

        elseif ennemie.health_point <= 0 then

            ennemie.health_point = 0
            my_turn = randomNumber(i, j)
            choix_UI = 4

            if choix_UI == 4 and love.mouse.isDown(1) then
            
                -- Récupération de la position du curseur en pixels
                local i = love.mouse.getX()
                local j = love.mouse.getY()
                -- Conversion pixer vers cases de la grille
                mousePosX_1 = math.floor((i/16)+1)
                mousePosY_1 = math.floor((j/16)+1)

                

                if mousePosY_1 >= 26 and mousePosY_1 <= 28.5 and mousePosX_1 >= 16 and mousePosX_1 <= 20 then
                    
                    monster_choice = randomNumber(a, b)
                    EnnemyCreation()
                    battle_number = battle_number + 1
                    delay_s(2)
                    choix_UI = 3
            
                elseif mousePosY_1 >= 26 and mousePosY_1 <= 28.5 and mousePosX_1 >= 22 and mousePosX_1 <= 26 then

                    monster_choice = randomNumber(a, b)
                    EnnemyCreation()
                    battle_number = 1
                    delay_s(2)
                    choix_UI = 1

                end
                
            end
            
        end

    end

    function action_UI_Victory(interface_choice,dt)

        return interface_choice
    end
---------------------------------------------------------------------------------------------
