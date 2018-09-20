def roll_die
  number = Random.rand(7)
  while number == 0
    number = Random.rand(7)
  end
  number
end

rolls = []
10.times {
  rolls << roll_die
}
rolls.sort.each { |r|
  puts "The result of your roll is #{r}"
  puts
}
