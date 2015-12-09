function love.load()
	love.window.setMode(500, 500)
	love.window.setTitle("Tablic")

	game_init = require("game_init")
	game_init.dataLoader()
	game_init.resourceLoader()
	game_info = game_init.setInitGameState()

end

function love.update(dt)
end

function love.draw()
end
