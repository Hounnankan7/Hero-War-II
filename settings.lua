--Taille des tuiles pour les Map----------------
    mapTileSizeW = 16
    mapTileSizeH = 16
    tileSize = 16

--Fonts-----------------------------------------
    font_main_size = 60
    font_second_size = 20
    font_third_size = 10  
    font_quard_size = 8 
    font_main = love.graphics.newFont("assets/fonts/PressStart2P.ttf", font_main_size)
    font_second = love.graphics.newFont("assets/fonts/PressStart2P.ttf", font_second_size)
    font_third = love.graphics.newFont("assets/fonts/PressStart2P.ttf", font_third_size)
    font_quard = love.graphics.newFont("assets/fonts/PressStart2P.ttf", font_quard_size)
        

--MES FONCTIONS CREES------------------------------------------------------------------------

    function randomNumber(a, b) -- Fonction pour créer un nombre aléatoire en fonction de a et b
        math.randomseed(os.time())
        local x = a
        local y = b
        turn = {}
        for i=1, 2 do
            turn[i] = math.random(x, y)
        end
        return turn[1]
    end

    function delay_s(delay) -- Fonction pour attente une durée "delay"
        delay = delay or 1
        local time_to = os.time() + delay
        while os.time() < time_to do end
    end
---------------------------------------------------------------------------------------------

