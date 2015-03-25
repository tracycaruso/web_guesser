require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'


  NUMBER = rand(101)
  BUFFER = 5

  get '/' do
    guess = params["guess"].to_i
    message = check_guess(guess)
    erb :index, :locals => {:number => NUMBER, :message => message, :bg_color => @bg_color}
  end

  def check_guess(guess)
    case
    when guess > (NUMBER + BUFFER)
      @bg_color = "red"
      "Way too high!"
    when guess > (NUMBER)
      @bg_color = "pink"
      "Too high!"
    when guess < (NUMBER - BUFFER)
      @bg_color = "red"
      "Way too low!"
    when guess < (NUMBER)
      @bg_color = "pink"
    else
      @bg_color = "green"
      "Remarkable, You got it right!"
    end
  end
