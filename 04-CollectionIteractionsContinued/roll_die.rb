def roll_die
  number = Random.rand(7)
  while number == 0
    number = Random.rand(7)
  end
  "The result of your roll is #{number}"
end
