# ### A. Given the following data structure:

# ```
lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']
# ```

# 1. Work out how many stops there are in the current west array
# 2. Return 'Edinburgh Park' from the array
# 3. How many ways can we return 'Princes Street' from the array?
# 4. Work out the index position of 'Haymarket' 
# 5. Add 'Airport' to the start of the array 
# 6. Add 'York Place' to the end of the array
# 7. Remove 'Edinburgh Park' from the array using it's name 
# 8. Delete 'Edinburgh Park' from the array by index
# 9. Reverse the positions of the stops in the array
# 10. Print out all of the stops using a for loop and a while loop

#Answer 1.
number_of_stops = lines.count

#Answer 2.
lines[1]

#Answer 3.
lines[4]
lines[-1]
lines.last

#Answer 4.
lines.index("Haymarket")

#Answer 5.
lines.unshift("Airport")

#Answer 6.
lines.push("York Place")
lines << "York Place"

#Answer 7.
lines.delete("Edinburgh Park")

#Answer 8.
lines.delete_at(1)

#Answer 9.
lines.reverse!

#Answer 10.1
for stop in lines

  print "#{stop} "

end

count = 0
limit = 1

#Answer 10.2
while (count < limit)

  count += 1
  lines.each { |stop| puts stop }

end

count = 0
while (count < lines.length)
  puts lines[count]
  count += 1
end

#########################################

### B. Given the following data structure:


  my_hash = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# 1. How would you return the string `"One"`?
# 2. How would you return the string `"Two"`?
# 3. How would you return the number `2`?
# 4. How would you add `{3 => "Three"}` to the hash? 
# 5. How would you add `{:four => 4}` to the hash? 

#Answer 1.
my_hash[1]

#Answer 2.
my_hash[:two]

#Answer 3.
my_hash["two"]

#Answer 4.
my_hash[3] = "Three"

#Answer 5.
my_hash[:four] = 4

#########################################

# ### C. Given the following data structure:

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
  }

# 1. Return Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
# 2. Return Erik's hometown 
# 3. Return the array of Erik's favorite numbers
# 4. Return the type of Avril's pet Colin
# 5. Return the smallest of Erik's favorite numbers
# 6. Return an array of Avril's favorite numbers that are even 
# 7. Return an array of Jonathans favourite numbers, sorted in ascending order and excluding duplicates
# 8. Add the number `7` to Erik's favorite numbers
# 9. Change Erik's hometown to Edinburgh
# 10. Add a pet dog to Erik called "Fluffy"
# 11. Add yourself to the users hash

#Answer 1.
puts users["Jonathan"] [:twitter]

#Answer 2.
puts users["Erik"] [:home_town]

#Answer 3.
puts users["Erik"] [:favourite_numbers]

#Answer 4.
puts users["Avril"] [:pets] ["colin"]

#Answer 5.
puts users["Erik"] [:favourite_numbers].sort.first

#Answer 6.
puts users["Avril"] [:favourite_numbers].find_all { |n| n % 2 == 0 }

#Answer 7.
puts users["Jonathan"] [:favourite_numbers].sort.uniq!

#Answer 8.
users["Erik"] [:favourite_numbers] << 7

#Answer 9.
users["Erik"] [:home_town] = "Edinburgh"

#Answer 10.
users["Erik"] [:pets] ["Fluffy"] = [:dog]

#Answer 11.
users ["Megan"] = {
  :twitter => "meganestra",
  :favourite_numbers => [8, 24, 33, 105],
  :home_town => "Edinburgh",
  :pets => {
    "bug" => :bulldog
  }
}
