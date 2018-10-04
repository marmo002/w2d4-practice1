puts "Attack | Def"
puts "------------"

results = Hash.new(0)

def losses(attacker, defender, results)
  case attacker <=> defender
  when -1
    results[:attacker_losts] += 1
  when 0
    results[:attacker_losts] += 1
  when 1
    results[:defender_losts] += 1
  end
end

(1..6).each do |a1|
  (1..6).each do |a2|
    (1..6).each do |a3|
      (1..6).each do |d1|
        (1..6).each do |d2|

          puts "#{a1} #{a2} #{a3} vs #{d1} #{d2}"

          losses(a1, d1, results)
          losses(a2, d2, results)

        end
      end
    end
  end
end

att = results[:attacker_losts]
defe = results[:defender_losts]

percentage = (defe.to_f / att * 100).round

puts <<~ooo

Final Outcome
=============

Attaker lost #{results[:attacker_losts]} armies.
Defender lost #{results[:defender_losts]} armies.

For every 100 armies the attacker loses, the defender loses #{percentage} armies

ooo
