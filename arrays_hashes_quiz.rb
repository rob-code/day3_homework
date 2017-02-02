### A. Given the following data structure:
puts "------------------------------------"
puts "Section A"

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
puts lines.fetch(4)


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

puts "there will be a method to do this - but its fun to work it out!"
puts lines.include?("Haymarket")
puts lines.index("Haymarket")

# 5. Add 'Airport' to the start of the array
puts ""
puts "Q5"
lines.unshift("Airport")
puts lines

# 6. Add 'York Place' to the end of the array
puts ""
puts "Q6"
lines.push("York Place")
puts lines << "York Place"  # shovel operator

# 7. Remove 'Edinburgh Park' from the array using it's name
puts ""
puts "Q7"
lines.delete("Edinburgh Park")
puts lines

# 8. Delete 'Edinburgh Park' from the array by index
puts ""
puts "Q8"
lines.insert(2,"Edinburgh Park")  #putting Edinburgh Park back in
lines.slice!(2) # or ...

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

#also:
#my_hash.merge!({3 => "Three"})
#my_hash.store(3, "Three")


# 5. How would you add `{:four => 4}` to the hash?

puts ""
puts "Q5"
my_hash[:four] = 4
puts my_hash

### C. Given the following data structure:
puts "------------------------------------"
puts "Section C"


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
        },
        "Robert" => {
          :twitter => "equationlab",
          :favourite_numbers => [14, 28, 38, 44, 56],
          :home_town => "Edinburgh",
          :pets => {
            "long" => :dog
          }
        }
      }

# 1. Return Jonathan's Twitter handle (i.e. the string `"jonnyt"`)

puts ""
puts "Q1"
puts users["Jonathan"][:twitter]


# 2. Return Erik's hometown

puts ""
puts "Q2"
puts users["Erik"][:home_town]

# 3. Return the array of Erik's favorite numbers
puts ""
puts "Q3"
puts users["Erik"][:favourite_numbers]

# 4. Return the type of Avril's pet Colin
puts ""
puts "Q4"
puts users["Avril"][:pets]["colin"]
puts users["Avril"][:pets].values #there's only one snake so it gives a unique value


# 5. Return the smallest of Erik's favorite numbers
puts ""
puts "Q5"
puts users["Erik"][:favourite_numbers].min
#puts eric_array.min

# 6. Add the number `7` to Erik's favorite numbers
puts ""
puts "Q6"
users["Erik"][:favourite_numbers].push(7)   #.unshift(7)  .insert(1,7)
puts users["Erik"][:favourite_numbers]

# 7. Change Erik's hometown to Edinburgh
puts ""
puts "Q7"
users["Erik"][:home_town] = "Edinburgh"
puts users["Erik"][:home_town ]


# 8. Add a pet dog to Erik called "Fluffy"
puts ""
puts "Q8"
users["Erik"][:pets]["Fluffy"] = :dog   # or users["Erik"][:pets].merge!({ "Fluffy" => :dog }) ... this is good if we have a lot of data into merge
puts users["Erik"][:pets]


# 9. Add yourself to the users hash
puts ""
puts "Q9"
users["Robert1"] = {
           :twitter => "equationlab",
           :favourite_numbers => [14, 28, 38, 44, 56],
           :home_town => "Edinburgh",
           :pets => {
             "long" => :dog
           }
         }




puts "Robert's entry to the users hash is : #{users}"

