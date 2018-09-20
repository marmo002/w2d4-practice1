roll1 = (1..6).to_a
roll2 = (1..6).to_a

roll1.each do |a|
  roll2.each do |b|
    puts "#{a} #{b}"
  end
end
