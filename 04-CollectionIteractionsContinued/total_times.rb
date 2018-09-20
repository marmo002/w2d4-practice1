
  total_counts = Hash.new(0)

  (1..6).each do |a|
    (1..6).each do |b|
      total_counts[a + b] += 1
    end
  end

  total_counts.each { |k, v|
    puts "#{k} occurs #{v} times"
  }
