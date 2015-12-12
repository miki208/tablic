function love.load()
	love.window.setMode(500, 500)
	love.window.setTitle("Tablic")

	--[[ Initializing --]]
	game_init = require("game_init")
	game_init.dataLoader()
	game_init.resourceLoader()
	game_info = game_init.setInitGameState()

	--[[ Loading rendering tools --]]
	render = require("render")
end

function love.update(dt)
end

function love.draw()
	render.drawBackground()
	render.drawDeck()
	render.drawMainBoard()
	render.drawMainPlayerHand()
	render.drawOpponentHand()
	render.drawScoreTable()
end
