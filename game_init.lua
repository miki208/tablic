local game_init = {}

function game_init.resourceLoader()
	game_init.cards = {}
	for i = 1, table.maxn(game_init.cardSymbols), 1 do
		for k, v in pairs(game_init.cardValues) do
			table.insert(game_init.cards, {symbol = game_init.cardSymbols[i], number = k, object = love.graphics.newImage("assets/images/card" .. game_init.cardSymbols[i] .. k .. ".png") })
		end
	end
	game_init.cardBackground = love.graphics.newImage("assets/images/cardBack_red3.png")
end

function game_init.dataLoader()
	game_init.cardSymbols = {"Clubs", "Diamonds", "Spades", "Hearts"}
	game_init.cardValues = {["2"] = {2}, ["3"] = {3}, ["4"] = {4}, ["5"] = {5}, ["6"] = {6}, ["7"] = {7},
	                        ["8"] = {8}, ["9"] = {9}, ["10"] = {10}, ["A"] = {1, 11}, ["J"] = {12}, ["Q"] = {13}, ["K"] = {14}}
	game_init.cardScores = {["A"] = 1, ["J"] = 1, ["Q"] = 1, ["K"] = 1, ["2Clubs"] = 1, ["10Clubs"] = 1, ["10Diamonds"] = 2, ["10Spades"] = 1, ["10Hearts"] = 1}
end

--[[ Returns the object with all game states --]]
function game_init.setInitGameState()
	local game_info = {}
	game_info.player1 = {}
	game_info.player2 = {}
	game_info.player1.cards = {}
	game_info.player2.cards = {}
	game_info.player1.score = 0
	game_info.player2.score = 0

	return game_info
end

return game_init
