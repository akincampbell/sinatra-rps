require "sinatra"
require "sinatra/reloader"

get("/") do
  #erb(:layout)
  "<h1>Hello world</h1>"
end


get("/rock") do
  moves = ["rock", "paper", "scissors"]

  comp_move = moves.sample

  if comp_move == "rock"
    outcome = "tied"
  elsif comp_move == "paper"
    outcome = "lost"
  else
    outcome = "won"
  end

  erb(:zebra)
end
