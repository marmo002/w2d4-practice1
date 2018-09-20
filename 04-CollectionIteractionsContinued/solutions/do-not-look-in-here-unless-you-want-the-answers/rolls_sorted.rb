results = []

10.times { results << Random.rand(6) + 1 }

results.sort!

results.each { |result| puts "The result of your roll is #{result}." }
