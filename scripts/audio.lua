--Les includes necessaires
	--Exemple: require "nom_du_fichier"
    
    require "settings"

---------------------------------------------------------------------------------------------

function audio_Init()

    main_audio = love.audio.newSource("assets/audios/Select_character.ogg", "stream")
    character_select_audio = love.audio.newSource("assets/audios/Select_character.ogg", "stream")
    battle_audio = love.audio.newSource("assets/audios/main.ogg", "stream")
    victory_audio = love.audio.newSource("assets/audios/Victory1.ogg", "stream")
    defeat_audio = love.audio.newSource("assets/audios/Defeat2.ogg", "stream")
    
end

function audio_Update()
    if choix_UI == 1 then
        love.audio.play( main_audio )

    elseif choix_UI == 2 then
        love.audio.stop(main_audio)
        love.audio.play( character_select_audio )
    
    elseif choix_UI == 3 then
        love.audio.stop(character_select_audio)
        love.audio.stop(victory_audio)
        love.audio.stop(defeat_audio)
        
        battle_audio:setVolume(0.5)
        love.audio.play( battle_audio )

    elseif choix_UI == 4 then
        
        love.audio.stop(battle_audio)

        victory_audio:setVolume(0.5)
        love.audio.play( victory_audio )

    elseif choix_UI == 5 then
        love.audio.stop(battle_audio)

        defeat_audio:setVolume(0.5)
        love.audio.play( defeat_audio )

    elseif choix_UI == 6 then
        love.audio.stop(main_audio)
    end
end