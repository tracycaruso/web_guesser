require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "The SECRET NUMBER is #{rand(101)}"
end
