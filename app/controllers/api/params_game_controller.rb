class Api::ParamsGameController < ApplicationController
  def name_game
    render 'name_game.json.jb'
  end
end
