# Here I stored some short but also necessary functions,
# including dead_ball, change_ball, rebound_decide, who_did_it, timeout, steal
# and turnover.

def dead_ball
  puts "(time/sub/no)?"
  ans = gets.chomp
  if ans == "time"
    timeout
  elsif ans == "sub"
    substitution
  end
end

def change_ball
  $whose_ball == true ? false : true
  show
end

def rebound_decide(ans)
  if ans == "h" && $whose_ball == false
    change_ball
  elsif ans == "a" && $whose_ball == true
    change_ball
  else
    show
  end
end

def who_did_it
  puts "who did it?"
  $num = gets.chomp
end

def show
  puts $whose_ball ? "Home's ball now." : "Away's ball now."
end

def timeout
  puts "Which team called a timeout? (home/away/tv)"
  team = gets.chomp
  puts "#{team} timeout."
end

def steal
  who_did_it
  puts $whose_ball ? "[Away] number #{num} steal the ball. Away's ball." \
  : "[Home] number #{num} steal the ball. Home's ball."
  change_ball
end

def turnover
  puts "Which kind of turnover? (out/jumpball)"
  type = gets.chomp
  case type
  when "out"
    puts "Whose ball? (h/a)"
    ans = gets.chomp
    rebound_decide(ans)
  when "jumpball"
    puts "Jumpball."
    if $ball_right == true && $whose_ball == true
      show
      $ball_right = false
    elsif $ball_right == false && $whose_ball == true
      change_ball
      $ball_right = true
    elsif $ball_right == true && $whose_ball == false
      change_ball
      $ball_right = false
    else
      show
      $ball_right = true
    end
  end
end
