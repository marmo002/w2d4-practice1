die1 = Random.rand(6) + 1
die2 = Random.rand(6) + 1

puts "You rolled a #{die1} and a #{die2}."

if die1 == die2
  puts 'Doubles!'
end

puts "Your total is #{die1 + die2}."
