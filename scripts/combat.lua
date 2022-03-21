--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "scripts/interfaces/ui_combat"
    require "scripts/player"
    require "scripts/ennemie"
    require "scripts/inventaire"
    require "scripts/interfaces/ui_victory"


--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------


--MES FONCTIONS CREES------------------------------------------------------------------------

    function EnCombat(dt) -- Function exécuter pendant le combat

        if choix_UI == 3 and my_turn == 1 and love.mouse.isDown(1) then

            -- Récupération de la position du curseur en pixels
            local i = love.mouse.getX()
            local j = love.mouse.getY()
            -- Conversion pixer vers cases de la grille
            mousePosX_1 = math.floor((i/16)+1)
            mousePosY_1 = math.floor((j/16)+1)
        
            -- Tour du Player
            if mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 36 and mousePosX_1 <= 38 then -- Si on clique sur attaque normale
        
                PlayerSimpleAttack(dt)
        
            elseif mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 40 and mousePosX_1 <= 42 then -- Si on clique sur attaque spéciale
                
                PlayerSpecialAttack(dt)
        
            elseif mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 44 and mousePosX_1 <=46 then -- Si on clique sur defendre
        
                PlayerDefend(dt)
        
            elseif mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 48 and mousePosX_1 <= 50 then -- Si on clique sur run
                
                trophee.run_number = trophee.run_number + 1
                choix_UI = 1 -- Retour vers l'écran principal avec perte de la progression
                print("Player "..my_turn.." run")
        
            elseif mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 14 and mousePosX_1 <=16 then -- Si on clique sur potion HP
        
                usePotionHP(dt)
        
            elseif mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 18 and mousePosX_1 <=20 then -- Si on clique sur potion ATK
                
                usePotionATK(dt)
        
            elseif mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 22 and mousePosX_1 <=24 then -- Si on clique sur potion DEF
                
                usePotionDEF(dt)
        
            elseif mousePosY_1 >= 40 and mousePosY_1 <= 42 and mousePosX_1 >= 26 and mousePosX_1 <=28 then -- Si on clique sur potion MP
                
                usePotionMP(dt)
        
            end
            

        elseif choix_UI == 3 and my_turn == 2 then -- Tour de l'ennemi
            
            ennemyAI(dt, action_choice)
            
        end

    end

---------------------------------------------------------------------------------------------