puts "Simple solution:"

(1..6).each do |die1|
  (1..6).each do |die2|
    puts "#{die1} #{die2}"
  end
end


puts "\nAdvanced solution:"

[*1..6].repeated_permutation(2) { |dice| puts dice.join(' ') }
