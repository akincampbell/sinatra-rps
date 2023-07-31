require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:layout)
end


get("/rock") do
  "<h1>hello</h1>"
  i = rand(0..2)
  
  rps_opp_rock = ["rock", "paper", "scizzors"]

  if rps_opp_rock[i] == "rock"
    @outcome_rock = "We tied"
  elsif rps_opp_rock[i] == "paper"
    @outcome_rock = "We lost"
  else
    @outcome_rock = "We won"
  end
  erb(:rock) #doesn't work and colors aren't on
end
