
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
