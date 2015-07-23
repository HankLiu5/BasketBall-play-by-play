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
