--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    --require "scripts/trophees"



--LES VARIABLES------------------------------------------------------------------------------
--Les constantes de calcul
const_exp1 = 40 --cnst pour level up
const_exp2 = 100 --cnst pour level up
const_exp3 = 250 --cnst pour level up

---------------------------------------------------------------------------------------------

--MES FONCTIONS CREES------------------------------------------------------------------------

function level_UP() -- Systeme de level UP et son influence sur le stats joueur

    if joueur.exp_actuel + ennemie.exp_loot < joueur.exp_next_level then

        joueur.exp_actuel = joueur.exp_actuel + ennemie.exp_loot

    elseif joueur.exp_actuel + ennemie.exp_loot >= joueur.exp_next_level then

        joueur.level = joueur.level + 1
        stats_evolution()
        joueur.exp_actuel = 0

    end
        
end

function stats_evolution()

    if joueur.id == 1 then


        joueur.max_health_point = (joueur.level * 50.0) + 80
        joueur.max_magic_point = (joueur.level * 30.0) + 30
        joueur.attack_point = (joueur.level * 5.0) + 50
        joueur.defense_point = (joueur.level * 5.0) + 40
        joueur.exp_next_level = math.floor( (const_exp2 * math.sqrt(joueur.level)) + const_exp1  )

    elseif joueur.id == 2 then

        joueur.max_health_point = (joueur.level * 50.0) + 70
        joueur.max_magic_point = (joueur.level * 30.0) + 30
        joueur.attack_point = (joueur.level * 5.0) + 45
        joueur.defense_point = (joueur.level * 5.0) + 55
        joueur.exp_next_level = math.floor( (const_exp2 * math.sqrt(joueur.level)) + const_exp1  )

    elseif joueur.id == 3 then

        joueur.max_health_point = (joueur.level * 50.0) + 75
        joueur.max_magic_point = (joueur.level * 30.0) + 55
        joueur.attack_point = (joueur.level * 5.0) + 30
        joueur.defense_point = (joueur.level * 5.0) + 40
        joueur.exp_next_level = math.floor( (const_exp2 * math.sqrt(joueur.level)) + const_exp1  )

    elseif joueur.id == 4 then
        
        joueur.max_health_point = (joueur.level * 50.0) + 60
        joueur.max_magic_point = (joueur.level * 30.0) + 60
        joueur.attack_point = (joueur.level * 5.0) + 40
        joueur.defense_point = (joueur.level * 5.0) + 40
        joueur.exp_next_level = math.floor( (const_exp2 * math.sqrt(joueur.level)) + const_exp3  )

    end

end
---------------------------------------------------------------------------------------------

