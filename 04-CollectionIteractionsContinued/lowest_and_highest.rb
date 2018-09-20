def roll_die
  number = Random.rand(7)
  while number == 0
    number = Random.rand(7)
  end
  number
end

def dice
  rolls = []

  5.times {
    rolls << roll_die
  }
  rolls.sort
end

def results
  dice_array = dice
  dice_array.each { |r|
    puts "The result of your roll is #{r}"
  }

  puts "The lowest number is #{dice_array.first}"
  puts "The highest number is #{dice_array.last}"
end

results
