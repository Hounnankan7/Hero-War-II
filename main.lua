--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    
    require "settings"
    require "scripts/ui_all"
    require "scripts/interfaces/ui_combat"
    require "my_bdd/character_db"
    require "my_bdd/ennemies_db"
    require "scripts/player"
    require "scripts/ennemie"
    require "scripts/combat"
    require "scripts/inventaire"
    require "scripts/interfaces/ui_victory"
    require "scripts/trophees"
    require "scripts/level_Up_System"
    require "scripts/audio"
    require "math"



--LES VARIABLES------------------------------------------------------------------------------

var_choix =0

---------------------------------------------------------------------------------------------


--LES FONCTIONS PROPRES A LOVE2D-------------------------------------------------------------
    function love.load(...) --Fonction d'initialisation des éléments propre a Love2D
        
        --Audios Initialisation----------------------------------------------
        audio_Init()
        ---------------------------------------------------------------------

        -- var pour le tour par tour du combat
        i = 1
        j = 2
        my_turn = randomNumber(i, j)
        ---------------------------------------------------------------------------------------------

        --var choix de l'ennemy---
        a = 1
        b = 30
        monster_choice = randomNumber(a, b)
        ----------------------

        --var choix d'action de l'ennemy---
        c = 1
        d = 8
        action_choice = 1
        ----------------------

        
        
        choix_UI = 1 --Choix interface
        choix_character = 1

        PlayerCreation()
        EnnemyCreation()

        

        inventaire_Init()

        interface_init() -- Initialisation des menus
        

    end


    function love.update(dt) --Fonction LOve2D en execution tout le temps
        --dt = delta time (temps entre 02 frames) pour rendre tous synchro 
        
        exitGame(choix_UI)


        choix_UI = manipulationInterface(choix_UI, dt) -- réaction en fonction des boutons cliqués

        trophee_Update()
        
        victory()

        ui_Combat_Update()

        EnCombat(dt)

        --inventaire_Update(dt)
       
        
        
        -----
        audio_Update()

    end

    
    function love.draw() --Fonction Love2D pour dessiner à l'écran
        
        --Tracage des interfaces
        
        if choix_UI == 1 then
            draw_MenuPrincipal()
        elseif choix_UI == 2  then
            draw_Ui_Player_Selection()
        elseif choix_UI == 3  then
            draw_Ui_Combat()
        elseif choix_UI == 4 then
            loot_Calculation()
            draw_Ui_victory()
        elseif choix_UI == 5 then
            draw_Ui_Defeat()
        elseif choix_UI == 6 then
            trophee_Draw()
        end

    end

---------------------------------------------------------------------------------------------


--MES FONCTIONS CREES------------------------------------------------------------------------



---------------------------------------------------------------------------------------------