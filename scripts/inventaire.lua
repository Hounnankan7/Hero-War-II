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
    nbr_item.hp = 4
    nbr_item.mp = 2
    nbr_item.atk = 1
    nbr_item.def = 1

end

--function inventaire_Update(dt)
    
--end

function usePotionHP(dt) --Utilisation de la potion HP
    if nbr_item.hp >= 1  then

        print("Player "..my_turn.." HP +10")

        joueur.health_point = math.floor((joueur.health_point + 10) + 0*dt)
        nbr_item.hp = nbr_item.hp - 1
        my_turn = 2
        delay_s(0.9)

        print("Player "..my_turn.." turn")

    elseif nbr_item.hp <= 0 then
        nbr_item.hp = 0
        delay_s(0.9)
        print("Player "..my_turn.." n'a plus la potion correspondante")
    end

end

function usePotionATK(dt) --Utilisation de la potion ATK
    if nbr_item.atk >= 1  then
        print("Player "..my_turn.." ATK +10")

        joueur.attack_point = math.floor((joueur.attack_point + 10) + 0*dt)
        nbr_item.atk = nbr_item.atk - 1
        my_turn = 2
        delay_s(0.9)

        print("Player "..my_turn.." turn")

    elseif nbr_item.atk <= 0 then
        nbr_item.atk = 0
        delay_s(0.9)
        print("Player "..my_turn.." n'a plus la potion correspondante")
    end
end

function usePotionDEF(dt) --Utilisation de la potion DEF
    if nbr_item.def >= 1  then
        print("Player "..my_turn.." DEF +10")

        joueur.defense_point = math.floor((joueur.defense_point + 10) + 0*dt)
        nbr_item.def = nbr_item.def - 1
        my_turn = 2
        delay_s(0.9)

        print("Player "..my_turn.." turn")

    elseif nbr_item.def <= 0 then
        nbr_item.def = 0
        delay_s(0.9)
        print("Player "..my_turn.." n'a plus la potion correspondante")
    end
end

function usePotionMP(dt) --Utilisation de la potion MP
    if nbr_item.mp >= 1  then
        print("Player "..my_turn.." TechP +10")

        joueur.magic_point = math.floor((joueur.magic_point + 10) + 0*dt)
        nbr_item.mp = nbr_item.mp - 1
        my_turn = 2
        delay_s(0.9)

        print("Player "..my_turn.." turn")
    elseif nbr_item.mp <= 0 then
        nbr_item.mp = 0
        delay_s(0.9)
        print("Player "..my_turn.." n'a plus la potion correspondante")
    end
end

---------------------------------------------------------------------------------------------