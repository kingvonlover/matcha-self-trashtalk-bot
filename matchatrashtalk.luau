local running = true
local isDead = false 


local deathMessages = {
    "bro you really suck", "how are u dying while exploiting", "user issue fr", "genuine bot bro", "youre so trash literally", 
    "just uninstall matcha at this point", "get rekt noob xD", "ive lost all faith in you", "youre better of playing legit atp", "holy trash",
    "not even matcha can save you", "your cfg must be trash", "just quit bro", "wrap it up youre buns", "worst exploiter oat",
    "bro got slimed :sob:", "what a noob", "dogwater whilst cheating bot", "wouldnt even get a kill on adopt me", "watching you play makes me reconsidre being born"
}

UI.AddTab("trashtalk", function(tab)
    
    local secL = tab:Section("the self trashlakt bot", "Left")
    
     
    secL:Toggle("death_notify_toggle", "use if trash", false)

    
    secL:SliderInt("notify_duration", "message duration in seconds", 1, 10, 2, function(val)
        
    end)
    
    secL:Spacing() 
end)

--⠀⠀⠀⠀⠀⠀⠀⣠⣤⣤⣤⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀yo who tf put among us dih into my dump 😭😭
--⠀⠀⠀⠀⠀⢰⡿⠋⠁⠀⠀⠈⠉⠙⠻⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⢀⣿⠇⠀⢀⣴⣶⡾⠿⠿⠿⢿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⣀⣀⣸⡿⠀⠀⢸⣿⣇⠀⠀⠀⠀⠀⠀⠙⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⣾⡟⠛⣿⡇⠀⠀⢸⣿⣿⣷⣤⣤⣤⣤⣶⣶⣿⠇⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀
--⢀⣿⠀⢀⣿⡇⠀⠀⠀⠻⢿⣿⣿⣿⣿⣿⠿⣿⡏⠀⠀⠀⠀⢴⣶⣶⣿⣿⣿⣆
--⢸⣿⠀⢸⣿⡇⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀⠀⣿⡇⣀⣠⣴⣾⣮⣝⠿⠿⠿⣻⡟
--⢸⣿⠀⠘⣿⡇⠀⠀⠀⠀⠀⠀⠀⣠⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠉⠀
--⠸⣿⠀⠀⣿⡇⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⠀⠀⠀⠀
--⠀⠻⣷⣶⣿⣇⠀⠀⠀⢠⣼⣿⣿⣿⣿⣿⣿⣿⣛⣛⣻⠉⠁⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⢸⣿⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⢸⣿⣀⣀⣀⣼⡿⢿⣿⣿⣿⣿⣿⡿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀
--⠀⠀⠀⠀⠀⠙⠛⠛⠛⠋⠁⠀⠙⠻⠿⠟⠋⠑⠛⠋⠀

while running do
    local player = game.Players.LocalPlayer
    local character = player.Character
    
    
    if UI.GetValue("death_notify_toggle") and character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        
        if humanoid then
            
            if humanoid.Health <= 0 and not isDead then
                isDead = true 
                
                
                local randomMsg = deathMessages[math.random(1, #deathMessages)]
                
                
                local duration = UI.GetValue("notify_duration")
                
                
                notify(randomMsg, "matcha trashtalk bot", duration)
            elseif humanoid.Health > 0 then
                isDead = false 
            end
        end
    end

    task.wait(0.1) 
end


