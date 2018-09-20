permutations = {}
number_of_permutations = 0

(2..12).each do |number|
  permutations[number] = { num_times: 0 }
end

(1..6).each do |die1|
  (1..6).each do |die2|
    number_of_permutations += 1
    permutations[die1 + die2][:num_times] += 1
  end
end

permutations.each do |key, value|
  permutations[key][:odds] = (value[:num_times] / number_of_permutations.to_f * 100).round
  puts "The odds of #{key} coming up are #{permutations[key][:odds]}%"
end


most_likely = permutations.max_by { |key, value| value[:odds] }

puts "#{most_likely.first} is most likely to come up with a #{most_likely.last[:odds]}% chance."
