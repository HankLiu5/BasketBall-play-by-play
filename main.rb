require './shooting.rb'
require './jumpball.rb'
require './foul.rb'
require './substitution.rb'
require './miscellaneous.rb'
require './free_throw.rb'

jumpball

while true
  puts "What's the action? (show/turn/shot/stl/foul/sub/TO/time/quit)"
  action = gets.chomp

  case action
  when "show"
    show
  when "turn"
    change_ball
  when "shot"
    shot
  when "foul"
    foul
  when "stl"
    steal
  when "sub"
    substitution
  when "TO"
    turnover
  when "time"
    timeout
  when "quit"
    break
  else
    puts "Try again."
  end
end
