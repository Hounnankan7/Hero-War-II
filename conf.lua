--Code pour les paramètres du jeu (taille fenetre, titre fenetre,...)

function love.conf(fenetre)
    --Config graphic de la fenetre
    fenetre.window.title = "HERO WAR II"
    fenetre.window.icon = "assets/icons/trophy/Shield.png"
    fenetre.window.width = 1024
    fenetre.window.height = 768


    --Config audio de la fenetre



    --Config system de la fenetre
    fenetre.modules.joystick = true           -- Enable the joystick module (boolean)
    fenetre.modules.keyboard = true           -- Enable the keyboard module (boolean)
    fenetre.modules.mouse = true              -- Enable the mouse module (boolean)

    fenetre.console = true
end