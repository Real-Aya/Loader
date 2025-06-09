
if _G.ScriptUrl then
    return loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/loaders/q5atznpu7i1crz0bvf58reaswdu8mj6p.lua"))()
end
local game_map = {
    [7436755782] = function() -- setclipboard(game.GameId) this how to get game id
        if getgenv().ConfigsReroll then
            return loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/loaders/ej5yimioj491bp6wvjfijccqq1vz18sa.lua"))()
        end
        return loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/loaders/98vt13x1h979yxngcvxbkjsq8hsw9rpw.lua"))()
    end,
}


setmetatable(game_map,{
    __index = function(...)
        return function()
            game.Players.LocalPlayer:Kick("Not Found The GameUse the right one else Contact our support")
        end
    end,
})

return game_map[game.GameId]()
