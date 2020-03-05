class Api::ParamsGameController < ApplicationController
  # Next make it so that if your name begins with the letter "a", there's a message that appears saying, 
  def name_game
    @user_name = params["name"]
    if @user_name[0] == "a"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'name_game.json.jb'
  end
end
