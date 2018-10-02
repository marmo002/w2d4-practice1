
  total_counts = Hash.new(0)

  (1..6).each do |a|
    (1..6).each do |b|
      total_counts[a + b] += 1
    end
  end

  total_counts.each { |k, v|
    odd = (v / 36.0) * 100
    puts "The odds of #{k} coming up are #{odd.round}%"
  }

  #Get the hiegher value on the hash
  value =  total_counts.values.max

  #Get the key or keys for that value
  keys = total_counts.select do |k, v|
      v == value
  end
  p keys

  #Get the percentage ( what percentage is N of 36)

  percentage = (value / 36.0 * 100).round
  keys.each do |k, v|
    puts "#{k} is most likely to come up with a #{percentage}% chance"
  end
