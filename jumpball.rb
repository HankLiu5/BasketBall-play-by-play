# This is for the beginning of the game.
# $whose_ball indicates which team hold the ball now.
# $ball_right indicates which team will get the ball after some situations.

def jumpball
  puts "which team get the ball? (h/a)"
  whose = gets.chomp
  if whose == "h"
    $whose_ball = true
    $ball_right = false
    puts "Home team got the jumpball."
  elsif whose == "a"
    $whose_ball = false
    $ball_right = true
    puts "Away team got the jumpball."
  end
end
