# Exercise 39: Hashes, Oh Lovely Hashes
# Ruby calls them "hashes", other languages call them, "Dictionaries". I tend to use both names, but it doesn't matter. What does matter is what they do when compared to Arrays. You see, a Array lets you do this: 

# Ex: Of what Arrays do:

things = ['a', 'b', 'c', 'd']
puts things[1]  # Returns 'b'. We're using cardinal numbers here, so 0 is a, and 1 is b in the array
things[1] = 'z' # Here we replacing the value of 1 with z, check it on the next line 
puts things     # Now when we print out the variable 'things', we see that 'b' has been replaced by 'z'
puts #blank

# BIG TAKEAWAY HERE:
# The big idea here is that with arrays you work with numbers to index into an Array. You can only use numbers to 
# get items out of an Array.

################################################################################################################################
# Ex: Of what Hashes do:

stuff = {'name' => 'Zed', 'age' => 36, 'height' => 6*12+2 }  # stuff is a Hash
# A hash is a ditionary-like collection of unique keys and their values. Also called associative arrays. but where
# an Array uses integers as its index, a Hash allows you to use any object type.
# Object types can be from the string domain, the integer domain and from the symbol domain... SEE BELOW

puts stuff['name']                 # prints the variable stuff's key string 'name' value out, which is Zed
puts stuff['age']                  # prints the variable stuff's key string 'age' value out, which is 36 
puts stuff['height']               # prints the variable stuff's key string 'height' value out, which is 74
stuff['city'] = "San Francisco"    # here we add a key and a value to the variable stuff
puts stuff['city']                 # prints the stuff variable's key string 'city' value out, which is San Francisco 
puts stuff                         # prints all the 'stuff' in the variaable 'stuff'

stuff[1] = "Wow"                   # Here we add a key and a value to the variable stuff; key: 1 = value: "Wow"
stuff[2] = "Neato"                 # Here we add a key and a value to the variable stuff; key: 2 = value: "Neato"  
puts stuff[1]                      # Now we're printing the value of the key '1'
puts stuff[2]                      # Now we're printing the value of the key '2'
puts stuff.inspect()               # And now the 'inspect' method looks into the var 'stuff' and prints it out
puts #blank

# BIG TAKEAWAY HERE:
# Big idea here is that we can grab the values from a hash by way of it's keys. And the keys can be a variety of data types.

stuff.delete('city')               # Delete function deletes the 'key, value, pair' from the Hash
stuff.delete(1)                    # Delete function deletes the 'key, value, pair' from the Hash 
stuff.delete(2)                    # Delete function deletes the 'key, value, pair' from the Hash 
puts stuff.inspect                 # And now with the 'inspect' method, we see the results of all of the deletions


################################################################################################################################
# OKAY NOW ON TO THE BIG KAHUNA...  

# The Hash 'states' creates a mapping from the KEY string literal of state to the VALUE string literal of abbreviation 
states = {                           
    'Oregon' => 'OR',
    'Florida' => 'FL',
    'California' => 'CA',
    'New York' => 'NY',
    'Michigan' => 'MI'
}

# The Hash 'cities' creates a mapping from the KEY string literal of city to the VALUE string literal of some cities in them 
cities = {
    'CA' => 'San Francisco',
    'MI' => 'Detroit',
    'FL' => 'Jacksonville'
}

# Here we add some more keys and values into the hash cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# prints out some cities
puts '-' * 10                           # Some dashes for decoration...
puts "NY State has: ", cities['NY']     # prints the string then the hash and it's key, which returns the value.
puts "OR State has: ", cities['OR']     # prints the string then the hash and it's key, which returns the value.   

# prints out some states
puts '-' * 10                           # Some dashes for decoration...    
puts "Michigan's abbreviation is: ", states['Michigan']  # prints the string then the hash and it's key, which returns the value.  
puts "Florida's abbreviation is: ", states['Florida']    # prints the string then the hash and it's key, which returns the value.

# do it by using the state then cities dict
puts '-' * 10                                       # Some dashes for decoration... 
puts "Michigan has: ", cities[states['Michigan']]   # Here we take the cities hash and take the architecture of the two placements 
                                                    # and reference the 'state' and the key: Michigan which returns the value: Detroit
puts "Florida has: ", cities[states['Florida']]     # Again: We got a reference here where cities is referencing the key value pair in states 
puts "Michigan has a bankrupt city:", cities['MI']  # We go back to the former way where cities is the HASH and it's returning the value of the key 'MI'

# puts every state abbreviation
puts '-' * 10                                       # Some dashes for decoration...  
for state, abbrev in states                         # the 'for' method sets up the loop in the hash 'state', where the abbrev is identified and returned
    puts "%s is abbreviated %s" % [state, abbrev]   # prints the string formatting with the %'s taking the position of the parameters.
end

# The abbrev public methods
# Given a set of strings, calculate the set of unambiguous abbreviations for those strings, and return a hash where the keys 
# are all the possible abbreviations and the values are the full strings.



# puts every city in state
puts '-' * 10                                       # Some dashes for decoration...
for abbrev, city in cities                          # In the cities hash, loop through all the values of the city and identify them by abbreviation
# Another way to say it: The 'for' method is looping through all abbreviations returned by the abbrev public method, in the cities Hash where the value is a city.
    puts "%s has the city %s" % [abbrev, city]      # Then we print the formatted string and it's variables/hashes
end

# now do both at the same time
puts '-' * 10                                       # Some dashes for decoration...     
for state, abbrev in states                         # In the 'state' hash, loop through all the values in the abbreviations
  puts "%s state is abbreviated %s and has city %s" % [state, abbrev, cities[abbrev]]   # prints the string and the formatting via it's key value pairs
end

puts '-' * 10                                       # Some dashes for decoration...
# if it's not there you get nil
state = states['Texas']                             # variable 'state' is equal to the hash 'states and we're adding the key 'Texas'

if not state                                        # 'if not' method sets up the logical statement where IF state is NOT there then:
    puts "Sorry, no Texas."                         # the application will print the string 'Sorry, no Texas'.
end

# get a city with a default value
city = cities['TX'] || 'Does Not Exist'             # the variable 'city' is equal to the return value of the hash: 'cities' & key 'TX' or we provice an excemption: 
                                                    # with the pipe symbol that means OR, 'Does Not Exist', a string literal
puts "The city for the state 'TX' is: %s" % city    # puts the formatted string and it's keys


################################################################################################################################
# Extra Credit
#  Do this same kind of mapping with cities and states/regions in your country, or or some other country.
# Go find the Ruby documentation for Hashes (a.k.a. Hash) and try to do even more things to them.
# Find out what you can't do with Hashes. A big one is that they do not have order, so try playing with that.

