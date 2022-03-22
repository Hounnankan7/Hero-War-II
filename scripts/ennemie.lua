--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "my_bdd/character_db"
    require "my_bdd/ennemies_db"



--LES VARIABLES------------------------------------------------------------------------------

damage_to_player = 0

---------------------------------------------------------------------------------------------



--MES FONCTIONS CREES------------------------------------------------------------------------
    
function EnnemyCreation() --Fonction d'initialisation de l'ennemie
    
    if joueur.level >= 1 and joueur.level <= 15 then
        a = 1
        b = 15
        monster_choice = randomNumber(a, b)

    elseif joueur.level > 15 and joueur.level <= 35 then
        a = 1
        b = 24
        monster_choice = randomNumber(a, b)

    elseif joueur.level > 35 and joueur.level <= 50 then
        a = 1
        b = 27
        monster_choice = randomNumber(a, b)

    elseif joueur.level > 50 and joueur.level <= 60 then
        a = 1
        b = 28
        monster_choice = randomNumber(a, b)

    elseif joueur.level > 60 and joueur.level <= 100 then
        a = 16
        b = 30
        monster_choice = randomNumber(a, b)

    end

    CreateMonster(monster_choice)

    ennemie = monster
    ennemie.image = monster.image
    ennemie.name = monster.name
    ennemie.health_point = monster.health_point
    ennemie.max_health_point = monster.max_health_point
    ennemie.magic_point = monster.magic_point
    ennemie.max_magic_point = monster.max_magic_point
    ennemie.attack_point = monster.attack_point
    ennemie.max_attack_point = monster.max_attack_point
    ennemie.defense_point = monster.defense_point
    ennemie.max_defense_point = monster.max_defense_point
    ennemie.exp_loot = monster.exp_loot

end

function EnnemyDraw() --Fonction pour dessiner l'ennemie
    
    love.graphics.draw(ennemie.image, 44*tileSize, 11.2*tileSize, 0, 2.1)

end    

function ennemyAI(dt, action_choice) -- Sequence possible d'action de l'ennemie

    action_choice = randomNumber(c, d)
    
    if action_choice >= 1 and action_choice <= 4 then
        EnnemySimpleAttack(dt)
    elseif action_choice == 5 then
        EnnemyCriticalAttack(dt)
    elseif action_choice >= 6 and action_choice <= 7 then
        EnnemySpecialAttack(dt)
    elseif action_choice == 8 then
        EnnemyDefend(dt)
    end 
      
end


function EnnemySimpleAttack(dt)

    if joueur.health_point >= 1 and joueur.health_point <= joueur.max_health_point then

        damage_to_player = (ennemie.attack_point * (100/(100 + joueur.defense_point)))
        print("Player "..my_turn.." deal "..damage_to_player.." damage")

        joueur.health_point = math.floor((joueur.health_point - damage_to_player ) )
        my_turn = 1
        delay_s(0.9)
    
        print("Player "..my_turn.." turn")

    elseif joueur.health_point <= 0 then
        
    end
    
end

function EnnemyCriticalAttack(dt)

    if joueur.health_point >= 1 and joueur.health_point <= joueur.max_health_point then

        damage_to_player = ((ennemie.attack_point) * (100/(100 + joueur.defense_point))) + 4
        print("Player "..my_turn.." deal critical damage of "..damage_to_player)

        joueur.health_point = math.floor((joueur.health_point - damage_to_player ) )
        my_turn = 1
        delay_s(0.9)
    
        print("Player "..my_turn.." turn")

    elseif joueur.health_point <= 0 then
        
    end
    
end

function EnnemySpecialAttack(dt)

    if joueur.health_point >= 1 and joueur.health_point <= joueur.max_health_point then

        damage_to_player = ((ennemie.attack_point + 4) * (100/(100 + joueur.defense_point)))
        print("Player "..my_turn.." use Special attack ") 
        print("Player "..my_turn.." deal "..damage_to_player.." damage")

        joueur.health_point = math.floor((joueur.health_point - damage_to_player ) )
        ennemie.magic_point = math.floor((ennemie.magic_point - 10 ) )
        my_turn = 1
        delay_s(0.9)

        print("Player "..my_turn.." turn")

    elseif joueur.health_point <= 0 then
        
    end

end

function EnnemyDefend(dt)

    print("Player "..my_turn.." defense +10")

    ennemie.defense_point = math.floor((ennemie.defense_point + 10 ) )
    my_turn = 1
    delay_s(0.9)

    print("Player "..my_turn.." turn")
    
end
---------------------------------------------------------------------------------------------