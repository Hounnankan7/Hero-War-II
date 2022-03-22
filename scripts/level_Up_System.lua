--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    --require "scripts/trophees"



--LES VARIABLES------------------------------------------------------------------------------
--Les constantes de calcul
const_exp1 = 40 --cnst pour level up
const_exp2 = 120 --cnst pour level up
const_exp3 = 400 --cnst pour level up

hp_random = 0
mp_random = 0
atk_random = 0
def_random = 0

---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------

function level_UP() -- Systeme de level UP et son influence sur le stats joueur

    if joueur.level < joueur.max_level then

        if joueur.exp_actuel + ennemie.exp_loot < joueur.exp_next_level then

            joueur.exp_actuel = joueur.exp_actuel + ennemie.exp_loot
    
        elseif joueur.exp_actuel + ennemie.exp_loot >= joueur.exp_next_level then
    
            joueur.level = joueur.level + 1
            stats_evolution()
            joueur.exp_actuel = 0
    
        end

    elseif joueur.level >= joueur.max_level then
        joueur.level = joueur.max_level
        joueur.exp_actuel = joueur.exp_next_level
        print("Vous avez atteint le niveau max")
    end
        
end

function stats_evolution()

    if joueur.id == 1 then

        hp_random = randomNumber(80, 85)
        mp_random = randomNumber(30, 35)
        atk_random = randomNumber(50, 55)
        def_random = randomNumber(40, 45)

        joueur.max_health_point = (joueur.level * 50.0) + hp_random
        joueur.max_magic_point = (joueur.level * 30.0) + mp_random
        joueur.attack_point = (joueur.level * 5.0) + atk_random
        joueur.defense_point = (joueur.level * 5.0) + def_random
        joueur.exp_next_level = math.floor( (const_exp2 * math.sqrt(joueur.level)) + const_exp1  )

    elseif joueur.id == 2 then

        hp_random = randomNumber(70, 75)
        mp_random = randomNumber(30, 35)
        atk_random = randomNumber(45, 50)
        def_random = randomNumber(55, 60)

        joueur.max_health_point = (joueur.level * 50.0) + hp_random
        joueur.max_magic_point = (joueur.level * 30.0) + mp_random
        joueur.attack_point = (joueur.level * 5.0) + atk_random
        joueur.defense_point = (joueur.level * 5.0) + def_random
        joueur.exp_next_level = math.floor( (const_exp2 * math.sqrt(joueur.level)) + const_exp1  )

    elseif joueur.id == 3 then

        hp_random = randomNumber(75, 80)
        mp_random = randomNumber(55, 60)
        atk_random = randomNumber(30, 35)
        def_random = randomNumber(40, 45)

        joueur.max_health_point = (joueur.level * 50.0) + hp_random
        joueur.max_magic_point = (joueur.level * 30.0) + mp_random
        joueur.attack_point = (joueur.level * 5.0) + atk_random
        joueur.defense_point = (joueur.level * 5.0) + def_random
        joueur.exp_next_level = math.floor( (const_exp2 * math.sqrt(joueur.level)) + const_exp1  )

    elseif joueur.id == 4 then
        
        hp_random = randomNumber(60, 65)
        mp_random = randomNumber(60, 65)
        atk_random = randomNumber(40, 45)
        def_random = randomNumber(40, 45)

        joueur.max_health_point = (joueur.level * 50.0) + hp_random
        joueur.max_magic_point = (joueur.level * 30.0) + mp_random
        joueur.attack_point = (joueur.level * 5.0) + atk_random
        joueur.defense_point = (joueur.level * 5.0) + def_random
        joueur.exp_next_level = math.floor( (const_exp2 * math.sqrt(joueur.level)) + const_exp3  )

    end

end
---------------------------------------------------------------------------------------------

