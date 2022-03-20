--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "scripts/interfaces/ui_characterSelection"
    require "scripts/interfaces/ui_combat"
    require "scripts/interfaces/ui_menu_principal"
    require "scripts/interfaces/ui_defeat"
    require "scripts/interfaces/ui_victory"
    require "scripts/trophees"



--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------



--MES FONCTIONS CREES------------------------------------------------------------------------

    function interface_init() --Initialisation de toutes les interfaces
        trophee_Init()
        interfacePrincipale_init()
        Ui_Player_Selection_Init()
        ui_Combat_Init()
    end


    function manipulationInterface(interface_choice, dt) -- Pour bien choisir l'interface

        if interface_choice == 1 then
            
            a = action_UI_MenuPrincipal(interface_choice,dt)
            

        elseif interface_choice == 2 then
            
            a = action_UI_Player_Selection(interface_choice, dt)
            

        elseif interface_choice == 3 then
            
            a = action_UI_Combat(interface_choice,dt)
            

        elseif interface_choice == 4 then
            
            a = action_UI_Victory(interface_choice,dt)
            

        elseif interface_choice == 5 then
           
            a = action_UI_Defeat(interface_choice,dt)

        elseif interface_choice == 6 then
              
            a = action_UI_Trophee(interface_choice,dt)

        end

        return a
    end

    
---------------------------------------------------------------------------------------------