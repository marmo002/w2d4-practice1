number_of_permutations = 0

(1..6).each do |die1|
  (1..6).each do |die2|
    number_of_permutations += 1
    puts "Dice Roll: #{die1}, #{die2}  Total: #{die1 + die2}"
  end
end

puts "There are #{number_of_permutations} possible permutations."
