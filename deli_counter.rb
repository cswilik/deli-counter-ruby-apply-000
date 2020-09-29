#queue/array is empty at beginning of day.
katz_deli = [ ] 

#first define a method line. This takes the argument of the deli.
# if the deli line is empty, make it say so using empty?
# if the empty? is true, puts statement. 
# if there are ppl in line, we need to make sure to keep their place in line.
# make a new array to .push customer and index into and not manipulate original array permanently 
# we use each.with_index to assign not only the customer name, but also the index to indicate their place in line.
# I puts #{index +1} because people count 1-9 instead of using the index count of 0-8 (for example).
# Join added the elements together in a list to show who is currently in line. We added the argument of a space to separate them.

def line(katz_deli)
  new_line = [ ]
  if katz_deli.empty? 
    puts "The line is currently empty."
  else katz_deli.length > 1
  katz_deli.each.with_index(1) do |customer, index|  #parameter that starts us at 1 instead of 0.
    new_line.push("#{index}. #{customer}") #assigns new elements to end of array - here it is number. customer.
    end  
  puts "The line is currently: #{new_line.join(" ")}" #joins everything into one string -- " " is between names!
  end 
end

# def line(katz_deli)
#   if katz_deli.length == 0 
#     puts "The line is currently empty."
#   else katz_deli.length > 1 
#     katz_deli.each_with_index do |customer, index|
#       katz_deli[index] = "#{index + 1}. #{customer}" #assigning name to number and the name.manipulating original array.
#     end
#     puts "The line is currently: #{katz_deli.join(" ")}" 
#   end 
# end

#the take_a_number method is used to add a new customer to the deli line.
#this method takes 2 arguments - current line + new customer
# We want to return the new customer and their place in our line.
#the push method is used again to add customer to end of deli array. I used push instead of shovel in case 
# use string interpolation to say every new customers place in line and the current length of the line(with them now in it)

# def take_a_number(katz_deli, customer)
#   katz_deli.push(customer)
#   puts "Welcome, #{customer}. You are number #{katz_deli.length} in line."
# end 


def take_a_number(katz_deli)
  count = 0 
  count += 1
  katz_deli.push(count)
  puts "Welcome, u r number #{count} in line"
end 

  

#This method helps us serve the person in line.
#After we serve them, they need to removed from the front so we can help the next person.
#If we have no customers, it should tell us that.
# used .empty? to see if we have customers in line. If true(no customers) then puts line "nobody waiting"
#if there is someone(s) in line, we need to highlight the first element - using #{katz_deli[customer at index 0]
#After we serve them, they need to be removed .shift will remove the first element  -- then we can serve the next person in line!

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end 
end 