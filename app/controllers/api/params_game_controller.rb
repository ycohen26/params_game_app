class Api::ParamsGameController < ApplicationController
  # Next make it so that if your name begins with the letter "a", there's a message that appears saying, 
  def name_game
    @param = params["name"]
    if @param[0] == "a"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'name_game.json.jb'
  end

  def guess_number
    user_guess = params[:number].to_i
    number = 40
    if user_guess > number
      @message = "Too High"
    elsif user_guess < number
      @message = "Too low"
    else
      @message = "You win!"
    end
    render 'number_game.json.jb'
  end

  def login
    if params[:username] == "hugh" && params[:password] == "swordfish"
      @message = "Valid Credentials"
    else 
      @message = "Invalid Credentials"
    end
    render 'number_game_login.json.jb'
  end
end

