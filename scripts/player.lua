--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "my_bdd/character_db"
    require "my_bdd/ennemies_db"



--LES VARIABLES------------------------------------------------------------------------------



---------------------------------------------------------------------------------------------



--MES FONCTIONS CREES------------------------------------------------------------------------
    
function PlayerCreation() --Fonction d'initialisation du perso du joueur
    
    CharacterSelection(choix_character)
    joueur = player
    joueur.id = player.id 
    joueur.class = player.class
    joueur.name = player.name
    joueur.image = player.image
    joueur.max_health_point = player.max_health_point
    joueur.health_point = player.health_point
    joueur.magic_point = player.magic_point
    joueur.max_magic_point = player.max_magic_point
    joueur.attack_point = player.attack_point
    joueur.max_attack_point = player.max_attack_point
    joueur.defense_point = player.defense_point
    joueur.max_defense_point = player.max_defense_point
    joueur.level = player.level
    joueur.max_level = player.max_level
    joueur.exp_actuel = player.exp_actuel
    joueur.exp_next_level = player.exp_next_level

end

function PlayerDraw() --Fonction pour dessiner le perso du joueur
    
    love.graphics.draw(joueur.image, 12*tileSize, 10*tileSize, 0, 2)

end    

function PlayerSimpleAttack(dt)
    
    if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then

        print("Player "..my_turn.." deal 10 damage")

        ennemie.health_point = math.floor((ennemie.health_point - 10) + 0*dt)
        my_turn = 2
        delay_s(0.9)

        print("Player "..my_turn.." turn")

    elseif ennemie.health_point <= 0 then
            
        
    end

end

function PlayerSpecialAttack(dt)

    if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
    
        print("Player "..my_turn.." deal 100 damage")

        ennemie.health_point = math.floor((ennemie.health_point - 100) + 0*dt)
        player.magic_point = math.floor((player.magic_point - 10) + 0*dt)
        my_turn = 2
        delay_s(0.9)

        print("Player "..my_turn.." turn")

    elseif ennemie.health_point <= 0 then
                
            
    end
    
end

function PlayerDefend(dt)
    
    print("Player "..my_turn.." defense +10")

    joueur.defense_point = math.floor((joueur.defense_point + 10) + 0*dt)
    my_turn = 2
    delay_s(0.9)

    print("Player "..my_turn.." turn")

end

---------------------------------------------------------------------------------------------