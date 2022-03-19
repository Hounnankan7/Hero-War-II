--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"



--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------



--MES FONCTIONS CREES------------------------------------------------------------------------
    
    function draw_Ui_Defeat()
        love.graphics.setColor(1, 1, 1)
        love.graphics.setFont(font_main)
        love.graphics.print("GAME OVER", 16*tileSize, 12*tileSize)
        love.graphics.setFont(font_second)

        love.graphics.print("Enter a new battle ? or Give Up ?", 16*tileSize, 24*tileSize)
        love.graphics.print("NEW", 16.2*tileSize, 26.5*tileSize)
        love.graphics.print("END", 22.2*tileSize, 26.5*tileSize)
        love.graphics.rectangle("line", 16*tileSize, 26*tileSize, 4*tileSize, 2.5*tileSize)
        love.graphics.rectangle("line", 22*tileSize, 26*tileSize, 4*tileSize, 2.5*tileSize)
    end

    function action_UI_Defeat(interface_choice,dt)
        return interface_choice
    end

---------------------------------------------------------------------------------------------