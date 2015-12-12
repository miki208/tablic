local render = {}

function render.drawBackground()
end

function render.drawDeck()
	love.graphics.draw(game_init.cardBackground, 10, love.window.getHeight() / 2 - game_init.cardBackground:getHeight() / 4, 0, 0.5, 0.5)
	love.graphics.draw(game_init.cardBackground, 10 + 2, love.window.getHeight() / 2 - game_init.cardBackground:getHeight() / 4, 0, 0.5, 0.5)
	love.graphics.draw(game_init.cardBackground, 10 + 4, love.window.getHeight() / 2 - game_init.cardBackground:getHeight() / 4, 0, 0.5, 0.5)
end

function render.drawMainBoard()
end

function render.drawMainPlayerHand()
end

function render.drawOpponentHand()
end

function render.drawScoreTable()
end

return render
