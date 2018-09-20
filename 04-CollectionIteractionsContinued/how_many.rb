roll1 = (1..6).to_a
roll2 = (1..6).to_a

count = 0

roll1.each do |a|
  roll2.each do |b|
    count += 1
    puts "Dice Roll: #{a} #{b} Total: #{a + b}"
  end
end
puts "There are #{count} posible permutations"
