--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    
    --require "scripts/interfaces/ui_combat"
    --require "scripts/player"
    --require "scripts/ennemie"
    --require "scripts/combat"

--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------

function inventaire_Init()
    nbr_item ={}
    nbr_item.hp = 5
    nbr_item.mp = 5
    nbr_item.hp_2 = 2
    nbr_item.mp_2 = 2

end

--function inventaire_Update(dt)
    
--end

function usePotionHP(dt) --Utilisation de la potion HP + 10
    if nbr_item.hp >= 1  then


        if joueur.health_point < joueur.max_health_point then
            if joueur.health_point + 10 < joueur.max_health_point then
                print("Player "..my_turn.." HP +10")
    
                joueur.health_point = math.floor((joueur.health_point + 10) + 0*dt)
                nbr_item.hp = nbr_item.hp - 1
                my_turn = 2
                trophee.potion = trophee.potion + 1
                delay_s(0.9)
        
                print("Player "..my_turn.." turn")
            elseif joueur.health_point + 10 >= joueur.max_health_point then
                print("Player "..my_turn.." HP +10")
    
                joueur.health_point = joueur.max_health_point
                nbr_item.hp = nbr_item.hp - 1
                my_turn = 2
                trophee.potion = trophee.potion + 1
                delay_s(0.9)
        
                print("Player "..my_turn.." turn")
    
            end
        elseif joueur.health_point >= joueur.max_health_point then
            print("Votre vie est deja pleine")
            joueur.health_point = joueur.max_health_point
            delay_s(0.9)
        end

    elseif nbr_item.hp <= 0 then
        nbr_item.hp = 0
        delay_s(0.9)
        print("Player "..my_turn.." n'a plus la potion correspondante")
    end

end

function usePotionATK(dt) --Utilisation de la potion HP + 150
    if nbr_item.hp_2 >= 1  then


        if joueur.health_point < joueur.max_health_point then
            if joueur.health_point + 150 < joueur.max_health_point then
                print("Player "..my_turn.." HP +150")
    
                joueur.health_point = math.floor((joueur.health_point + 150) + 0*dt)
                nbr_item.hp_2 = nbr_item.hp_2 - 1
                my_turn = 2
                trophee.potion = trophee.potion + 1
                delay_s(0.9)
        
                print("Player "..my_turn.." turn")
            elseif joueur.health_point + 150 >= joueur.max_health_point then
                print("Player "..my_turn.." HP +150")
    
                joueur.health_point = joueur.max_health_point
                nbr_item.hp_2 = nbr_item.hp_2 - 1
                my_turn = 2
                trophee.potion = trophee.potion + 1
                delay_s(0.9)
        
                print("Player "..my_turn.." turn")
    
            end
        elseif joueur.health_point >= joueur.max_health_point then
            print("Votre vie est deja pleine")
            joueur.health_point = joueur.max_health_point
            delay_s(0.9)
        end

    elseif nbr_item.hp_2 <= 0 then
        nbr_item.hp_2 = 0
        delay_s(0.9)
        print("Player "..my_turn.." n'a plus la potion correspondante")
    end

end

function usePotionDEF(dt) --Utilisation de la potion MP + 10
    if nbr_item.mp >= 1  then

        if joueur.magic_point < joueur.max_magic_point then
            if joueur.magic_point + 10 < joueur.max_magic_point then
                print("Player "..my_turn.." TP +10")
    
                joueur.magic_point = math.floor((joueur.magic_point + 10) + 0*dt)
                nbr_item.mp = nbr_item.mp - 1
                my_turn = 2
                trophee.potion = trophee.potion + 1
                delay_s(0.9)
        
                print("Player "..my_turn.." turn")
                
            elseif joueur.magic_point + 10 >= joueur.max_magic_point then
                print("Player "..my_turn.." TP +10")
    
                joueur.magic_point = joueur.max_magic_point
                nbr_item.mp = nbr_item.mp - 1
                my_turn = 2
                trophee.potion = trophee.potion + 1
                delay_s(0.9)
        
                print("Player "..my_turn.." turn")            
    
            end
        elseif joueur.magic_point >= joueur.max_magic_point then
            print("Vos point de technique sont deja pleins")
            joueur.magic_point = joueur.max_magic_point
            delay_s(0.9)
        end

    elseif nbr_item.mp <= 0 then
        nbr_item.mp = 0
        delay_s(0.9)
        print("Player "..my_turn.." n'a plus la potion correspondante")
    end
end

function usePotionMP(dt) --Utilisation de la potion MP + 150
    if nbr_item.mp_2 >= 1  then

        if joueur.magic_point < joueur.max_magic_point then
            if joueur.magic_point + 150 < joueur.max_magic_point then
                print("Player "..my_turn.." TP +150")
    
                joueur.magic_point = math.floor((joueur.magic_point + 150) + 0*dt)
                nbr_item.mp_2 = nbr_item.mp_2 - 1
                my_turn = 2
                trophee.potion = trophee.potion + 1
                delay_s(0.9)
        
                print("Player "..my_turn.." turn")
                
            elseif joueur.magic_point + 150 >= joueur.max_magic_point then
                print("Player "..my_turn.." TP +150")
    
                joueur.magic_point = joueur.max_magic_point
                nbr_item.mp_2 = nbr_item.mp_2 - 1
                my_turn = 2
                trophee.potion = trophee.potion + 1
                delay_s(0.9)
        
                print("Player "..my_turn.." turn")            
    
            end
        elseif joueur.magic_point >= joueur.max_magic_point then
            print("Vos point de technique sont deja pleins")
            joueur.magic_point = joueur.max_magic_point
            delay_s(0.9)
        end

    elseif nbr_item.mp_2 <= 0 then
        nbr_item.mp_2 = 0
        delay_s(0.9)
        print("Player "..my_turn.." n'a plus la potion correspondante")
    end
end

---------------------------------------------------------------------------------------------