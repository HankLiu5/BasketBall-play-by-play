def shot
  puts "Which kind of shot? (2a/3a/2m/3m/lay-a/lay-m/dunk-a/dunk-m)"
  type = gets.chomp
  case type
  when "2a"
    two_a
  when "3a"
    three_a
  when "2m"
    two_m
  when "3m"
    three_m
  when "lay-a"
    layup_a
  when "lay-m"
    layup_m
  when "dunk-a"
    dunk_a
  when "dunk-m"
    dunk_m
  end
end

def layup_m
  who_did_it
  puts $whose_ball ? "Home player number #{$num} layup shot made, away's ball." \
  : "Away player number #{$num} layup shot made, home's ball."
  change_ball
end

def dunk_m
  who_did_it
  puts $whose_ball ? "Home player number #{$num} dunk shot made, away's ball." \
  : "Away player number #{$num} dunk shot made, home's ball."
  change_ball
end

def layup_a
  who_did_it
  puts $whose_ball ? "[Home] number #{$num} layup shot missed, rebound." \
  : "[Away] player number #{$num} layup shot missed, rebound."
  rebound
end

def dunk_a
  who_did_it
  puts $whose_ball ? "[Home] number #{$num} dunk shot missed, rebound." \
  : "[Away] player number #{$num} dunk shot missed, rebound."
  rebound
end


def two_m
  who_did_it
  puts $whose_ball ? "Home player number #{$num} 2 pt shot made, away's ball." \
  : "Away player number #{$num} 2 pt shot made, home's ball."
  change_ball
end

def three_m
  who_did_it
  puts $whose_ball ? "Home player number #{$num} 3 pt shot made, away's ball." \
  : "Away player number #{$num} 3 pt shot made, home's ball."
  change_ball
end

def two_a
  who_did_it
  puts $whose_ball ? "[Home] player number #{$num} 2 pt shot missed, rebound." \
  : "[Away] player number #{$num} 2 pt shot missed, rebound."
  rebound
end

def three_a
  who_did_it
  puts $whose_ball ? "[Home] number #{$num} 3 pt shot missed, rebound." \
  : "[Away] player number #{$num} 3 pt shot missed, rebound."
  rebound
end

def rebound
  puts "Which team grab the rebound? (h/a)"
  ans = gets.chomp
  who_did_it
  puts (ans == "h") ? "Home player number #{$num} grab a rebound." : \
  "Away player number #{$num} grab a rebound."
  rebound_decide(ans)
end
