
if _G.ScriptUrl then
    return loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/loaders/q5atznpu7i1crz0bvf58reaswdu8mj6p.lua"))()
end
local game_map = {
    [7436755782] = function() -- setclipboard(game.GameId) this how to get game id
--[[
    Ayaya Services - Secure Script Loader
    Do not run this file directly. Always use the provided loadstring.
]]
local a = "98vt13x1h979yxngcvxbkjsq8hsw9rpw"
local b = a .. "-cache.lua"
local c = "http://pirvate-aya.ddns.net:4001/api/v1/files/l/" .. a .. ".lua"
local d = "\n-- Ayaya Services - This script is protected.\n-- Do not run this directly. Use th\n\n"
is_from_loader = {Mode = "fastload"}
local e = 0.03
function Ayaya_Fastload(f)
	if f == "flush" then
		wait(e)
		e = e + 2
		local g, h
		local i, j =
			pcall(
				function()
					g = game:HttpGet(c)
					pcall(writefile, b, d .. g)
					wait(0.1)
					h = loadstring(g)
				end
			)
		if not i or not h then
			pcall(writefile, "ayaya-error-log.txt", tostring(g))
			warn("Ayaya Services: Failed to load script. Error: " .. tostring(j))
			return
		end
		h(is_from_loader)
	elseif f == "rl" then
		pcall(writefile, b, "recache required")
		wait(0.2)
		pcall(delfile, b)
	end
end
local k
local i, j =
	pcall(
		function()
			local l = readfile(b)
			if not l or #l < 5 then
				return
			end
			k = loadstring(l)
		end
	)
if not i or not k then
	Ayaya_Fastload("flush")
else
	k(is_from_loader)
end
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
