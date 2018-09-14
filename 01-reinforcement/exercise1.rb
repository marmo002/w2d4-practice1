# check if first letter is vowel or constant

# if vowel: apply vowel rules

# if constant: apply constant rules



  # method to figure out if vowel or not

  def is_vowel?(letter)
    vowels = ["a", "e", "i", "o", "u"]
    vowels.include?(letter)
  end


  # add ay to the end of the string


  def pig_latin(word)
    letters = word.chars
    new_letters = word.chars

    letters.each_with_index do |chr, e|
      if is_vowel?(chr)
        break
      end

      if chr == "q"
        #check if next char is u
        index = e + 1
        if letters[index] == "u"
          new_letters << new_letters.shift
          new_letters << new_letters.shift
          letters.delete_at(e)
          letters.delete_at(index)
        else
          new_letters << new_letters.shift
        end

      else
          new_letters << new_letters.shift
      end
    end
    new_letters << "Ay"

    new_letters.join.to_s
  end


puts "mbjartin is #{pig_latin("mbjartin")}"
puts "squeeze is #{pig_latin("squeeze")}"
puts "augusto is #{pig_latin("augusto")}"
puts "meliza is #{pig_latin("meliza")}"
puts "ilario is #{pig_latin("ilario")}"

  # move it to the end of string
