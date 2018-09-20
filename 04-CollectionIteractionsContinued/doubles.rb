def roll_die
  number = Random.rand(7)
  while number == 0
    number = Random.rand(7)
  end
  number
end

def dice
  rolls = []

  2.times {
    rolls << roll_die
  }
  rolls.sort
end

def result
  rolls = dice
  puts "You rolled #{rolls[0]} and #{rolls[1]}"
  if rolls[0] == rolls[1]
    puts "Doubles!!"
  end
  puts "Your total is #{rolls.sum}"
end

result
