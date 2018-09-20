permutations = {}
number_of_permutations = 0

(2..12).each { |number| permutations[number] = 0 }

(1..6).each do |die1|
  (1..6).each do |die2|
    number_of_permutations += 1
    permutations[die1 + die2] += 1
  end
end

permutations.each do |key, value|
  odds = value.to_f / number_of_permutations * 100
  puts "The odds of #{key} coming up are #{odds.round}%"
end
