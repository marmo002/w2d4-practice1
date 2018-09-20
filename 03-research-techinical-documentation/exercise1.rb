# STRING METHODS
# Lenght:
#   Arguments: string
#   Returns: integer
  puts "martin has #{"martin".length} characters"

# Strip:
#   Arguments: string
#   Returns: string without leading and trailing whitespaces
a = "  word   "
puts a
puts a.strip

# split:
#   Arguments: a patter as string, or limit as integer
#   Returns: array
a = "the things i say these days"
puts a
p a.split(" i ")

# START WITH?:
#   Arguments: one or more strings to compare original string with
#   Returns: boolean
a = "the things i say these days"
puts a
p a.start_with? 'thi', 'who'

# ARRAY METHODS
# first:
#   Arguments: integer optional
#   Returns: the first N elements of array
a = (1..6).to_a
p a
puts "first 3 elements of the array are:"
p a.first(3)

# delete_at:
#   Arguments: requires integer as the index to delete item
#   Returns: the delete item, or nil
a = (1..6).to_a
p a
puts "The item delete from a is"
p a.delete_at 4
p a
puts

puts "****************************************"
# delete:
#   Arguments: item in array to be deleted
#   Returns: the deleted item, or nil, or block code
a = (1..6).to_a
p a
puts "The item delete from a is"
p a.delete(4)
p a
puts

puts "****************************************"
# pop:
#   Arguments: number of items to be deleted from the end. Default 1
#   Returns: array with deleted item(s)
a = (1..10).to_a
p a
puts "One item deleted:"
p a.pop
puts "three items deleted:"
p a.pop(3)
puts "****************************************"
puts

# HASH METHODS
# to_a:
#   Arguments: no arguments
#   Returns: array of arrays with keys and values as items
info = { name: "Martin", lat_name: "Maco", age: 32, city: "Markham", }
p info
puts "first 3 elements of the array are:"
p info.to_a
puts "****************************************"
puts

# has_key?:
#   Arguments: key to look for on hash
#   Returns: boolean
info = { name: "Martin", last_name: "Maco", age: 32, city: "Markham", }
puts "the hash has the key last_name"
p info.has_key?(:last_name)
puts "****************************************"
puts

# has_value?:
#   Arguments: value to look for on hash
#   Returns: boolean
info = { name: "Martin", last_name: "Maco", age: 32, city: "Markham", }
puts "the hash has the value Markham"
p info.has_value?("Markham")

# TIME METHODS
# now:
#   Arguments: no arguments
#   Returns: Time object for current time
today = Time.now
puts "What day is today: #{today.day}"
puts "****************************************"
puts

# FILE METHODS
# exist?:
#   Arguments: file name
#   Returns: boolean if file exists
puts "Is exercise1.rb in this directory?"
puts File.exist?("exercise1.rb")
puts "****************************************"
puts

# extname():
#   Arguments: file name with extension
#   Returns: extension of file
puts "Ext of exercise1.rb is?"
puts File.extname("exercise1.rb")
puts "****************************************"
puts
