--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"


--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------

function trophee_Init()
    
    battle_number = 1
    battle_number_actu = 0

    --Nombres pour Trophees
    trophee = {}

    trophee.kill_number = 0
    trophee.death_number = 0
    trophee.run_number = 0
    trophee.potion = 0
    trophee.emperor_slayer = 0
    trophee.swordman_slayer = 0
    trophee.spearman_slayer = 0
    trophee.gunner_slayer = 0
    trophee.legendary_slayer = 0
    trophee.master_slayer = 0
    trophee.chanceux = 0
    trophee.section_number = 0

    -- ui Trophees
    ui_trophee = {}
    ui_trophee.trophee_1 = 0
    ui_trophee.trophee_2 = 0
    ui_trophee.trophee_3 = 0
    ui_trophee.trophee_4 = 0
    ui_trophee.trophee_5 = 0
    ui_trophee.trophee_6 = 0
    ui_trophee.trophee_7 = 0
    ui_trophee.trophee_8 = 0
    ui_trophee.trophee_9 = 0
    ui_trophee.trophee_10 = 0
    ui_trophee.trophee_11 = 0
    ui_trophee.trophee_12 = 0

    -- Icon Trophees
    ui_trophee.trophee_image_1 = love.graphics.newImage("assets/icons/trophy/c (620).jpg")
    ui_trophee.trophee_image_2 = love.graphics.newImage("assets/icons/trophy/c (620).jpg")
    ui_trophee.trophee_image_3 = love.graphics.newImage("assets/icons/trophy/Tomatoes.png")
    ui_trophee.trophee_image_4 = love.graphics.newImage("assets/icons/trophy/c (620).jpg")

    ui_trophee.trophee_image_5 = love.graphics.newImage("assets/icons/trophy/c (126).jpg")
    ui_trophee.trophee_image_6 = love.graphics.newImage("assets/icons/trophy/c (125).jpg")
    ui_trophee.trophee_image_7 = love.graphics.newImage("assets/icons/trophy/c (132).jpg")
    ui_trophee.trophee_image_8 = love.graphics.newImage("assets/icons/trophy/airhorn.png")

    ui_trophee.trophee_image_9 = love.graphics.newImage("assets/icons/trophy/dice.png")
    ui_trophee.trophee_image_10 = love.graphics.newImage("assets/icons/trophy/star.png")
    ui_trophee.trophee_image_11 = love.graphics.newImage("assets/icons/trophy/star.png")
    ui_trophee.trophee_image_12 = love.graphics.newImage("assets/icons/trophy/Shield.png")


end

function trophee_Update()

    ui_trophee.trophee_1 = trophee.kill_number 
    ui_trophee.trophee_2 = trophee.death_number
    ui_trophee.trophee_3 = trophee.potion
    ui_trophee.trophee_4 = trophee.run_number
    ui_trophee.trophee_5 = trophee.swordman_slayer
    ui_trophee.trophee_6 = trophee.spearman_slayer
    ui_trophee.trophee_7 = trophee.gunner_slayer
    ui_trophee.trophee_8 = trophee.section_number
    ui_trophee.trophee_9 = trophee.chanceux
    ui_trophee.trophee_10 = trophee.master_slayer
    ui_trophee.trophee_11 = trophee.legendary_slayer
    ui_trophee.trophee_12 = trophee.emperor_slayer

end
-- LES FONCTIONS DE CALCUL DE TROPHEE ----------------------------------------
function calcul_trophee_slayer()

    if choix_UI == 4 then

        trophee.kill_number = trophee.kill_number + 1

        if monster_choice >= 1 and monster_choice <= 4 then
            trophee.swordman_slayer = trophee.swordman_slayer + 1
    
        elseif monster_choice >= 6 and monster_choice <= 10 then
            trophee.spearman_slayer = trophee.spearman_slayer + 1
    
        elseif monster_choice >= 11 and monster_choice <= 15 then
            trophee.gunner_slayer = trophee.gunner_slayer + 1
    
        elseif monster_choice >= 25 and monster_choice <= 27 or monster_choice == 28 or monster_choice == 29 then
            trophee.legendary_slayer = trophee.legendary_slayer + 1
    
        elseif monster_choice >= 16 and monster_choice <= 18 or monster_choice >= 19 and monster_choice <= 21 or monster_choice >= 22 and monster_choice <= 24 then
            trophee.master_slayer = trophee.master_slayer + 1
    
        elseif monster_choice == 30 then
            trophee.emperor_slayer = trophee.emperor_slayer + 1
    
        end

    elseif choix_UI == 5 then
            
        trophee.death_number = trophee.death_number + 1 
        
    end
    
end
-------------------------------------------------------------------------------

function trophee_Draw()

    love.graphics.setColor(1, 1, 1)
    love.graphics.setFont(font_main)
    love.graphics.print("TROPHIES", 16*tileSize, 12*tileSize)
    love.graphics.setFont(font_third)

    --IMAGE DES TROPHEE
    love.graphics.draw(ui_trophee.trophee_image_1, 16*tileSize, 20*tileSize)
    love.graphics.draw(ui_trophee.trophee_image_2, 16*tileSize, 24*tileSize)
    love.graphics.draw(ui_trophee.trophee_image_4, 16*tileSize, 28*tileSize)
    love.graphics.draw(ui_trophee.trophee_image_3, 16*tileSize, 32*tileSize)

    love.graphics.draw(ui_trophee.trophee_image_5, 30*tileSize, 20*tileSize)
    love.graphics.draw(ui_trophee.trophee_image_6, 30*tileSize, 24*tileSize)
    love.graphics.draw(ui_trophee.trophee_image_7, 30*tileSize, 28*tileSize)
    love.graphics.draw(ui_trophee.trophee_image_8, 30*tileSize, 32*tileSize)

    love.graphics.draw(ui_trophee.trophee_image_9, 44*tileSize, 20*tileSize)
    love.graphics.draw(ui_trophee.trophee_image_10, 44*tileSize, 24*tileSize)
    love.graphics.draw(ui_trophee.trophee_image_11, 44*tileSize, 28*tileSize)
    love.graphics.draw(ui_trophee.trophee_image_12, 44*tileSize, 32*tileSize)

    --TITRE DES TROPHEE
    love.graphics.print(" KILLED WARRIORS", 18*tileSize, 20.6*tileSize)
    love.graphics.print(" NUMBER OF DEATHS", 18*tileSize, 24.6*tileSize)
    love.graphics.print(" RUN FROM BATTLE", 18*tileSize, 28.6*tileSize)
    love.graphics.print(" FOOD ADDICT", 18*tileSize, 32.6*tileSize)

    love.graphics.print(" SWORDMAN SLAYER", 32*tileSize, 20.6*tileSize)
    love.graphics.print(" SPEARMAN SLAYER", 32*tileSize, 24.6*tileSize)
    love.graphics.print(" ANTI-GUNNER", 32*tileSize, 28.6*tileSize)
    love.graphics.print(" SECTION NUMBER", 32*tileSize, 32.6*tileSize)

    love.graphics.print(" CHANCEUX", 46*tileSize, 20.6*tileSize)
    love.graphics.print(" MASTER SLAYER", 46*tileSize, 24.6*tileSize)
    love.graphics.print(" ANTI-HEROES", 46*tileSize, 28.6*tileSize)
    love.graphics.print(" EMPEROR SLAYER", 46*tileSize, 32.6*tileSize)

    --VALEUR DES TROPHEE
    love.graphics.print(" "..ui_trophee.trophee_1, 18*tileSize, 21.6*tileSize)
    love.graphics.print(" "..ui_trophee.trophee_2, 18*tileSize, 25.6*tileSize)
    love.graphics.print(" "..ui_trophee.trophee_4, 18*tileSize, 29.6*tileSize)
    love.graphics.print(" "..ui_trophee.trophee_3, 18*tileSize, 33.6*tileSize)

    love.graphics.print(" "..ui_trophee.trophee_5, 32*tileSize, 21.6*tileSize)
    love.graphics.print(" "..ui_trophee.trophee_6, 32*tileSize, 25.6*tileSize)
    love.graphics.print(" "..ui_trophee.trophee_7, 32*tileSize, 29.6*tileSize)
    love.graphics.print(" "..ui_trophee.trophee_8, 32*tileSize, 33.6*tileSize)

    love.graphics.print(" "..ui_trophee.trophee_9, 46*tileSize, 21.6*tileSize)
    love.graphics.print(" "..ui_trophee.trophee_10, 46*tileSize, 25.6*tileSize)
    love.graphics.print(" "..ui_trophee.trophee_11, 46*tileSize, 29.6*tileSize)
    love.graphics.print(" "..ui_trophee.trophee_12, 46*tileSize, 33.6*tileSize)

    --RECTANGLE DES TROPHEE
    love.graphics.rectangle("line", 16*tileSize, 20*tileSize, 2*tileSize, 2*tileSize)
    love.graphics.rectangle("line", 16*tileSize, 24*tileSize, 2*tileSize, 2*tileSize)
    love.graphics.rectangle("line", 16*tileSize, 28*tileSize, 2*tileSize, 2*tileSize)
    love.graphics.rectangle("line", 16*tileSize, 32*tileSize, 2*tileSize, 2*tileSize)
    
    love.graphics.rectangle("line", 30*tileSize, 20*tileSize, 2*tileSize, 2*tileSize)
    love.graphics.rectangle("line", 30*tileSize, 24*tileSize, 2*tileSize, 2*tileSize)
    love.graphics.rectangle("line", 30*tileSize, 28*tileSize, 2*tileSize, 2*tileSize)
    love.graphics.rectangle("line", 30*tileSize, 32*tileSize, 2*tileSize, 2*tileSize)

    love.graphics.rectangle("line", 44*tileSize, 20*tileSize, 2*tileSize, 2*tileSize)
    love.graphics.rectangle("line", 44*tileSize, 24*tileSize, 2*tileSize, 2*tileSize)
    love.graphics.rectangle("line", 44*tileSize, 28*tileSize, 2*tileSize, 2*tileSize)
    love.graphics.rectangle("line", 44*tileSize, 32*tileSize, 2*tileSize, 2*tileSize)
    --BOUTON BACK de la partie trophee
    love.graphics.setFont(font_second)
    love.graphics.print("BACK", 16.2*tileSize, 36.5*tileSize)
    love.graphics.rectangle("line", 16*tileSize, 36*tileSize, 5.5*tileSize, 2.5*tileSize)

end

function action_UI_Trophee(interface_choice,dt)

    if interface_choice == 6 and love.mouse.isDown(1) then

        -- Récupération de la position du curseur en pixels
        local x = love.mouse.getX()
        local y = love.mouse.getY()
        -- Conversion pixer vers cases de la grille
        mousePosX = math.floor((x/16)+1)
        mousePosY = math.floor((y/16)+1)

        if mousePosY >= 36 and mousePosY <= 39 and mousePosX >= 16 and mousePosX <= 21 then
            interface_choice = 1
        end

    end

    return interface_choice
end
---------------------------------------------------------------------------------------------