
def totals_count
  roll1 = (1..6).to_a
  roll2 = (1..6).to_a
  total_counts = {}

  roll1.each do |a|
    roll2.each do |b|
      total = a + b
      if total_counts[total]
        total_counts[total] += 1
      else
        total_counts[total] = 1
      end
    end
  end
  total_counts
end

totals_count.each { |k, v|
  puts "#{k} occurs #{v} times"
}
