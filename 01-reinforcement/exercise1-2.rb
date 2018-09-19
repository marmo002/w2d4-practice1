trains = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

def select_train(trains_h, train_no)
  selected = trains_h.select { |train| train[:train] == train_no}
  selected[0]
end

train111_direction = select_train(trains, "111")[:direction]
puts train111_direction

train80B_frequency = select_train(trains, "80B")[:frequency_in_minutes]
puts train80B_frequency

train610_direction = select_train(trains, "610")[:direction]
puts train610_direction

def trains_going(direction, trains)
  train_names = []
  trains.each do |train|
    train.each do |k, v|
      if v == direction
        train_names << train[:train]
      end
    end
  end
  train_names
end
puts "****************************************"
puts trains_going("north", trains)
puts "****************************************"
puts trains_going("east", trains)

trains[Random.rand(7)][:first_departure_time] = 6
puts trains
