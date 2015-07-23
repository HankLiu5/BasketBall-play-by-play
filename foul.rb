# This is about all possible fouls on the court,
# including defense, offense, double, flagrent and technical foul.
# This can determine what situation will be coming after the called foul.

def foul
  puts "Which kind of foul? (def/off/double/flag/tech)"
  type = gets.chomp
  case type
  when "double"
    puts "Home player? "
    player1 = gets
    puts "Away player? "
    player2 = gets
    puts "[Home] number #{player1}, [Away] number #{player2}, double foul."
    dead_ball
  when "flag"
    who_did_it
    puts ($whose_ball == false) ? "[Home] number #{$num} flagrent foul." \
    : "[Away] number #{$num} flagrent foul."
    puts "Who was fouled?"
    num = gets.chomp
    puts "Any free throw? (1/2/3)"
    ft = gets.chomp.to_i
    dead_ball
    free_throw(num, ft, true)
  when "off"
    who_did_it
    puts ($whose_ball == true) ? "[Home] number #{$num} offensive foul, away's ball." \
    : "[Away] number #{$num} offensive foul, home's ball."
    dead_ball
    change_ball
  when "tech"
    puts "Which team did it? (h/a)"
    team = gets.chomp
    who_did_it
    puts (team == "h") ? "[Home] number #{$num} technical foul." \
    : "[Away] number #{$num} technical foul."
    puts "Any free throw? (0/1)"
    ft = gets.chomp.to_i
    dead_ball
    if ft > 0 && ft <= 1
      free_throw($num, ft)
    elsif ft == 0
      show
    else
      puts "try again!"
      foul
    end
  when "def"
    who_did_it
    puts ($whose_ball == false) ? "[Home] number #{$num} personal foul." \
    : "[Away] number #{$num} personal foul."
    puts "Who was fouled?"
    num = gets.chomp
    puts "Any free throw? (0/1/2/3)"
    ft = gets.chomp.to_i
    dead_ball
    if ft > 0 && ft <= 3
      free_throw(num, ft)
    elsif ft == 0
      show
    else
      puts "try again!"
      foul
    end
  end
end
