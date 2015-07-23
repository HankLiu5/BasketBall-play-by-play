# This is about free throw, including free throw made or missed,
# and further situation after last free throw.
def free_throw(num, ft, flag=false)
  ft_made = 0
  ft_attempt = ft
  puts $whose_ball ? "[Home] number #{num} got #{ft} free throw(s)." \
  : "[Away] number #{num} got #{ft} free throw(s)."
  while ft > 1
    puts "Made the free throw? (y/n)"
    ans = gets.chomp
    if ans == "y"
      ft_made += 1
      ft_display(num, ft_made, ft_attempt)
    elsif ans == "n"
      ft_display(num, ft_made, ft_attempt)
    else
      puts "try again"
    end
    ft -= 1
  end

  # This part is the last free throw situation.
  puts "Got the free throw? (y/n)"
  ans = gets.chomp
  if ans == "y"
    ft_made += 1
    ft_display(num, ft_made, ft_attempt)
    change_ball if flag == false
  elsif ans == "n"
    puts $whose_ball ? "[Home] number #{num} FT missed: #{ft_made}/#{ft_attempt}, rebound" \
    : "[Away] number #{$num} FT missed: #{ft_made}/#{ft_attempt}, rebound."
    (flag == false) ? rebound : show
  else
    puts "try again"
  end
end

def ft_display(num, ft_made, ft_attempt)
  puts $whose_ball ? "[Home] number #{num} FT made: #{ft_made}/#{ft_attempt}" \
  : "[Away] number #{num} FT made: #{ft_made}/#{ft_attempt}"
end
