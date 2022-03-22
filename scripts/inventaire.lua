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
    nbr_item.hp = 10
    nbr_item.mp = 4
    nbr_item.hp_2 = 4
    nbr_item.mp_2 = 10

    loot_item = {}
    loot_item.hp = 0
    loot_item.mp = 0
    loot_item.hp_2 = 0
    loot_item.mp_2 = 0

end

--function inventaire_Update(dt)
    
--end

function usePotionHP(dt) --Utilisation de la potion HP + 40
    if nbr_item.hp >= 1  then


        if joueur.health_point < joueur.max_health_point then
            if joueur.health_point + 40 < joueur.max_health_point then
                print("Player "..my_turn.." HP +40")
    
                joueur.health_point = math.floor((joueur.health_point + 40 ) )
                nbr_item.hp = nbr_item.hp - 1
                my_turn = 2
                trophee.potion = trophee.potion + 1
                delay_s(0.9)
        
                print("Player "..my_turn.." turn")
            elseif joueur.health_point + 40 >= joueur.max_health_point then
                print("Player "..my_turn.." HP +40")
    
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
    
                joueur.health_point = math.floor((joueur.health_point + 150 ) )
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

function usePotionDEF(dt) --Utilisation de la potion MP + 20
    if nbr_item.mp_2 >= 1  then

        if joueur.magic_point < joueur.max_magic_point then
            if joueur.magic_point + 20 < joueur.max_magic_point then
                print("Player "..my_turn.." TP +20")
    
                joueur.magic_point = math.floor((joueur.magic_point + 20 ) )
                nbr_item.mp_2 = nbr_item.mp_2 - 1
                my_turn = 2
                trophee.potion = trophee.potion + 1
                delay_s(0.9)
        
                print("Player "..my_turn.." turn")
                
            elseif joueur.magic_point + 10 >= joueur.max_magic_point then
                print("Player "..my_turn.." TP +20")
    
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

function usePotionMP(dt) --Utilisation de la potion MP + 150
    if nbr_item.mp >= 1  then

        if joueur.magic_point < joueur.max_magic_point then
            if joueur.magic_point + 150 < joueur.max_magic_point then
                print("Player "..my_turn.." TP +150")
    
                joueur.magic_point = math.floor((joueur.magic_point + 150 ) )
                nbr_item.mp = nbr_item.mp - 1
                my_turn = 2
                trophee.potion = trophee.potion + 1
                delay_s(0.9)
        
                print("Player "..my_turn.." turn")
                
            elseif joueur.magic_point + 150 >= joueur.max_magic_point then
                print("Player "..my_turn.." TP +150")
    
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

function loot_Ajout() -- mp_2 est la potion +20TP
    if monster_choice >= 1 and monster_choice <= 15 then

        nbr_item.hp = nbr_item.hp + loot_item.hp
        nbr_item.mp = nbr_item.mp + loot_item.mp
        nbr_item.hp_2 = nbr_item.hp_2 + loot_item.hp_2
        nbr_item.mp_2 =nbr_item.mp_2 + loot_item.mp_2

    elseif monster_choice >= 16 and monster_choice <= 24 then

        nbr_item.hp = nbr_item.hp + loot_item.hp
        nbr_item.mp = nbr_item.mp + loot_item.mp
        nbr_item.hp_2 = nbr_item.hp_2 + loot_item.hp_2
        nbr_item.mp_2 =nbr_item.mp_2 + loot_item.mp_2

    elseif monster_choice >= 25 and monster_choice <= 28 then

        nbr_item.hp = nbr_item.hp + loot_item.hp
        nbr_item.mp = nbr_item.mp + loot_item.mp
        nbr_item.hp_2 = nbr_item.hp_2 + loot_item.hp_2
        nbr_item.mp_2 =nbr_item.mp_2 + loot_item.mp_2

    elseif monster_choice >= 29 and monster_choice <= 30 then

        nbr_item.hp = nbr_item.hp + loot_item.hp
        nbr_item.mp = nbr_item.mp + loot_item.mp
        nbr_item.hp_2 = nbr_item.hp_2 + loot_item.hp_2
        nbr_item.mp_2 =nbr_item.mp_2 + loot_item.mp_2

    end
end

function loot_Calculation() -- mp_2 est la potion +20TP
    if monster_choice >= 1 and monster_choice <= 15 then

        loot_item.hp = 2
        loot_item.mp = 0
        loot_item.hp_2 = 1
        loot_item.mp_2 = 2

    elseif monster_choice >= 16 and monster_choice <= 24 then

        loot_item.hp = 2
        loot_item.mp = 0
        loot_item.hp_2 = 2
        loot_item.mp_2 = 1

    elseif monster_choice >= 25 and monster_choice <= 28 then

        loot_item.hp = 2
        loot_item.mp = 2
        loot_item.hp_2 = 1
        loot_item.mp_2 = 0

    elseif monster_choice >= 29 and monster_choice <= 30 then
        
        loot_item.hp = 2
        loot_item.mp = 2
        loot_item.hp_2 = 2
        loot_item.mp_2 = 2

    end
end

---------------------------------------------------------------------------------------------