### A. Given the following data structure:

lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']

# 1. Work out how many stops there are in the array
puts ""
puts "Q1"
puts lines.length()

# 2. Return 'Edinburgh Park' from the array
puts ""
puts "Q2"
puts lines[1]

# 3. How many ways can we return 'Princes Street' from the array?
puts ""
puts "Q3"
puts lines[4]
puts lines.at(4)
puts lines.slice(4)
puts lines.slice(4,1)
puts lines.last()


# 4. Work out the index position of 'Haymarket'
puts ""
puts "Q4"
stop = "Haymarket"
index = 0
while index < lines.length()
  if lines[index] == stop
    puts "The index position of #{stop} is #{index}" 
    break
  end
  index += 1
end

# 5. Add 'Airport' to the start of the array
puts ""
puts "Q5"
lines.unshift("Airport")
puts lines

# 6. Add 'York Place' to the end of the array
puts ""
puts "Q6"
lines.push("York Place")
puts lines

# 7. Remove 'Edinburgh Park' from the array using it's name
puts ""
puts "Q7"
lines.delete("Edinburgh Park")
puts lines

# 8. Delete 'Edinburgh Park' from the array by index
puts ""
puts "Q8"
lines.insert(2,"Edinburgh Park")  #putting Edinburgh Park back in
lines.slice!(2)
puts lines

# 9. Reverse the positions of the stops in the array
puts ""
puts "Q9"
lines.reverse!()
puts lines


### B. Given the following data structure:

puts "------------------------------------"
puts "Section B"
my_hash = {"0" => "Zero", 1 => "One", :two => "Two", "two" => 2}

puts my_hash


# 1. How would you return the string `"One"`?

puts ""
puts "Q1"
puts my_hash[1]


# 2. How would you return the string `"Two"`?

puts ""
puts "Q2"
puts my_hash[:two]

# 3. How would you return the number `2`?

puts ""
puts "Q3"
puts my_hash["two"]

# 4. How would you add `{3 => "Three"}` to the hash?

puts ""
puts "Q4"
my_hash[3] = "Three"
puts my_hash

# 5. How would you add `{:four => 4}` to the hash?

puts ""
puts "Q5"
my_hash[:four] = 4
puts my_hash

### C. Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :favourite_numbers => [12, 42, 75, 12, 5],
    :home_town => "Stirling",
    :pets => {
      "fluffy" => :cat,
      "fido" => :dog,
      "spike" => :dog
    }
  },
  "Erik" => {
    :twitter => "eriksf",
    :favourite_numbers => [8, 12, 24],
    :home_town => "Linithgow",
    :pets => {
      "nemo" => :fish,
      "kevin" => :fish,
      "spike" => :dog,
      "rupert" => :parrot
    }
  },
  "Avril" => {
    :twitter => "bridgpally",
    :favourite_numbers => [12, 14, 85, 88],
    :home_town => "Dunbar",
    :pets => {
      "colin" => :snake
    }
  }
}

# 1. Return Jonathan's Twitter handle (i.e. the string `"jonnyt"`)

# 2. Return Erik's hometown

# 3. Return the array of Erik's favorite numbers

# 4. Return the type of Avril's pet Colin

# 5. Return the smallest of Erik's favorite numbers

# 6. Add the number `7` to Erik's favorite numbers

# 7. Change Erik's hometown to Edinburgh

# 8. Add a pet dog to Erik called "Fluffy"

# 9. Add yourself to the users hash
