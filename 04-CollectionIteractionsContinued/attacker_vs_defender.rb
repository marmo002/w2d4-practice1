def roll
  die = Random.rand(7)
  while die == 0
    die = Random.rand(7)
  end
  die
end

players = {
  player1: {
    armies: 5,
    rolls: [],
    role: "",
  },
  player2: {
    armies: 5,
    rolls: [],
    role: "",
  },
}

def selecting_roles(players)
  number = Random.rand(3)
  while number == 0
    number = Random.rand(3)
  end

  if number == 1
    players[:player1][:role] = "a"
    players[:player2][:role] = "d"
  else
    players[:player1][:role] = "d"
    players[:player2][:role] = "a"
  end

end

def attacker_rolls(armies)
  arr = []
  case armies

  when 2
    arr << roll
  when 3
    arr << roll << roll
  when 4..5
    arr << roll << roll << roll
  end
  arr
end

def defender_rolls(armies)
  arr = []
  case armies

  when 1
    arr << roll
  when 2..5
    arr << roll << roll
  end
  arr
end

selecting_roles(players)

def battle(players)


  attacker = players.select {|k, v| v[:role] == "a"}.first[0]
  defender = players.select {|k, v| v[:role] == "d"}.first[0]

  a_armies = players[attacker][:armies]
  d_armies = players[defender][:armies]

  while a_armies > 1 && d_armies >= 1
    puts
    puts "New Battle Begins!"
    puts "=================="
    puts
    puts "Armies before the battle:"
    puts "Attacker: #{a_armies} armies"
    puts "Defender: #{d_armies} armies"
    puts
    players[attacker][:rolls] = attacker_rolls(a_armies)
    players[defender][:rolls] = defender_rolls(d_armies)
    puts "Attacker rolls #{players[attacker][:rolls].join(", ")}"
    puts "Defender rolls #{players[defender][:rolls].join(", ")}"
    puts

    players[attacker][:rolls].length.times do |e|
      a = players[attacker][:rolls][e]
      d = players[defender][:rolls][e]
      if a && d
        winner = a <=> d
        case winner
        when -1
          puts "Defender wins a battle: #{d} beats #{a}"
          players[attacker][:armies] -= 1
        when 0
          puts "Defender wins a battle: #{d} beats #{a}"
          players[attacker][:armies] -= 1
        when 1
          puts "Attacker wins a battle: #{a} beats #{d}"
          players[defender][:armies] -= 1
        end
      end
    end
    a_armies = players[attacker][:armies]
    d_armies = players[defender][:armies]
    puts
    puts "Armies after the battle:"
    puts "Attacker: #{a_armies} armies"
    puts "Defender: #{d_armies} armies"
    puts
  end

  puts "Final Outcome"
  puts "============="
  puts
  puts "Attacker's final army count: #{a_armies}"
  puts "Defender's final army count: #{d_armies}"
  puts
  battle_winner = a_armies <=> d_armies
  case battle_winner
  when -1
    puts "Defender retains country!!"
  when 1
    puts "Attacker takes country!!"
  end
  puts

end

battle(players)
