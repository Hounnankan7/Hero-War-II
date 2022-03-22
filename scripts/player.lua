--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    require "settings"
    require "my_bdd/character_db"
    require "my_bdd/ennemies_db"



--LES VARIABLES------------------------------------------------------------------------------

normal_damage_to_ennemy = 0
skill_damage_to_ennemy = 0
critical_chance = 0
plus_critic_normal = 0
plus_critic_skill = 0

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

function PlayerSimpleAttack(dt) --Function Attack normale

    critical_chance = randomNumber(1, 5)

    if critical_chance >= 1 and critical_chance <= 4 then --Attack normale

        if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then

            normal_damage_to_ennemy = (joueur.attack_point * (100/(100 + ennemie.defense_point)))

            print("Player "..my_turn.." deal "..normal_damage_to_ennemy.." damage")
    
            ennemie.health_point = math.floor((ennemie.health_point - normal_damage_to_ennemy ) )
            my_turn = 2
            delay_s(0.9)
    
            print("Player "..my_turn.." turn")
    
        elseif ennemie.health_point <= 0 then
                
            
        end

    elseif critical_chance == 5 then --Attack normale critique
        
        if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then

            plus_critic_normal = 10
            normal_damage_to_ennemy = (joueur.attack_point * (100/(100 + ennemie.defense_point))) + plus_critic_normal

            print("Player "..my_turn.." deal critical damage of "..normal_damage_to_ennemy)
    
            ennemie.health_point = math.floor((ennemie.health_point - normal_damage_to_ennemy ) )
            my_turn = 2
            delay_s(0.9)
    
            print("Player "..my_turn.." turn")
    
        elseif ennemie.health_point <= 0 then
                
            
        end

    end
    
end

function PlayerSkill_1_Attack(dt)

    critical_chance = randomNumber(1, 5)

    if critical_chance >= 1 and critical_chance <= 4 then --Attack skill 1

        if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
            if player.magic_point >= 10 then -- Condition sur la possession des mp necessaire à l'atk
    
                skill_damage_to_ennemy = ((joueur.attack_point + 20) * (100/(100 + ennemie.defense_point)))

                print("Player "..my_turn.." use Skill 1")
                print("Player "..my_turn.." deal "..skill_damage_to_ennemy.." damage")
        
                ennemie.health_point = math.floor((ennemie.health_point - skill_damage_to_ennemy ) )
                player.magic_point = math.floor((player.magic_point - 10 ) )
                my_turn = 2
                delay_s(0.9)
    
                print("Player "..my_turn.." turn")
    
            elseif player.magic_point < 10 then
                print("Vous n'avez pas assez de TP pour cette attaque")
            end
    
        elseif ennemie.health_point <= 0 then
                    
                
        end

    elseif critical_chance == 5 then --Attack skill 1 critique

        if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
            if player.magic_point >= 10 then -- Condition sur la possession des mp necessaire à l'atk
                
                plus_critic_skill = 14
                skill_damage_to_ennemy = ((joueur.attack_point + 20) * (100/(100 + ennemie.defense_point))) + plus_critic_skill

                print("Player "..my_turn.." use Skill 1")
                print("Player "..my_turn.." deal critical damage of "..skill_damage_to_ennemy)
        
                ennemie.health_point = math.floor((ennemie.health_point - skill_damage_to_ennemy ) )
                player.magic_point = math.floor((player.magic_point - 10 ) )
                my_turn = 2
                delay_s(0.9)
    
                print("Player "..my_turn.." turn")
    
            elseif player.magic_point < 10 then
                print("Vous n'avez pas assez de TP pour cette attaque")
            end
    
        elseif ennemie.health_point <= 0 then
                    
                
        end

    end
    
end

function PlayerSkill_2_Attack(dt)

    critical_chance = randomNumber(1, 5)

    if critical_chance >= 1 and critical_chance <= 4 then --Attack skill 2

        if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
            if player.magic_point >= 15 then -- Condition sur la possession des mp necessaire à l'atk
    
                skill_damage_to_ennemy = ((joueur.attack_point + 25) * (100/(100 + ennemie.defense_point)))

                print("Player "..my_turn.." use Skill 2")
                print("Player "..my_turn.." deal "..skill_damage_to_ennemy.." damage")
        
                ennemie.health_point = math.floor((ennemie.health_point - skill_damage_to_ennemy ) )
                player.magic_point = math.floor((player.magic_point - 15 ) )
                my_turn = 2
                delay_s(0.9)
    
                print("Player "..my_turn.." turn")
    
            elseif player.magic_point < 15 then
                print("Vous n'avez pas assez de TP pour cette attaque")
            end
    
        elseif ennemie.health_point <= 0 then
                    
                
        end

    elseif critical_chance == 5 then --Attack skill 2 critique

        if ennemie.health_point >= 1 and ennemie.health_point <= ennemie.max_health_point then
            if player.magic_point >= 15 then -- Condition sur la possession des mp necessaire à l'atk
                
                plus_critic_skill = 16
                skill_damage_to_ennemy = ((joueur.attack_point + 25) * (100/(100 + ennemie.defense_point))) + plus_critic_skill

                print("Player "..my_turn.." use Skill 2")
                print("Player "..my_turn.." deal critical damage of "..skill_damage_to_ennemy)
        
                ennemie.health_point = math.floor((ennemie.health_point - skill_damage_to_ennemy ) )
                player.magic_point = math.floor((player.magic_point - 15 ) )
                my_turn = 2
                delay_s(0.9)
    
                print("Player "..my_turn.." turn")
    
            elseif player.magic_point < 15 then
                print("Vous n'avez pas assez de TP pour cette attaque")
            end
    
        elseif ennemie.health_point <= 0 then
                    
                
        end

    end

end

function PlayerDefend(dt)
    
    print("Player "..my_turn.." defense +10")

    joueur.defense_point = math.floor((joueur.defense_point + 10))
    my_turn = 2
    delay_s(0.9)

    print("Player "..my_turn.." turn")

end

---------------------------------------------------------------------------------------------