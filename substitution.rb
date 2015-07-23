# This is for substituting player.
def substitution
  while true
    puts "Which player on?"
    player_on = gets.chomp.to_i
    puts "Which player off?"
    player_off = gets.chomp.to_i
    puts "Which team? (h/a)"
    team = gets.chomp
    puts (team == "h") ? "[Home] number #{player_on} on, number #{player_off} off." \
    : "[Away] number #{player_on} on, number #{player_off} off."
    puts "Others? (y/n)"
    ans = gets.chomp
    break if ans == "n"
  end
end
