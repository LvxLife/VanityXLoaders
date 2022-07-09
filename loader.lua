request = http_request or request or HttpPost or syn.request

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Response = request({
    Url = "https://raw.githubusercontent.com/LvxLife/VanityX/main/"..tostring(game.PlaceId),
    Method = "GET"
})

if Response.StatusCode ~= 404 then

        loadstring(game:HttpGet("https://raw.githubusercontent.com/LvxLife/VanityX/main/"..tostring(game.PlaceId)))()
    
    else

    OrionLib:MakeNotification(
        {
            Name = "Vanity X",
            Content = "Hello " .. game.Players.LocalPlayer.Name .. ", This Game Is Not Supported!",
            Image = "rbxassetid://7072718307",
            Time = 10
        }
    )
end
