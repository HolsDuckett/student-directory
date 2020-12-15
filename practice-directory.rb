def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"

    #get another name from user
    name = gets.chomp
  end
  #return the array of students
  students
  input_hobby(students)
end

# add hobby to students array
def input_hobby(students)
# ask user to input their fav hobbu
  puts "What is your favourite hobby?"
  puts "To finish, just hit return twice"

  hobby = gets.chomp
  #while hobby is full do the second while loop
  while !hobby.empty? do
    counter = 0
    #counter less that amount of students ask for hobby
    while counter < students.count do
    #assign new key 'hobby' to user input of fav hobby in students array
    students[counter][:hobby] = hobby
    puts "#{students[counter][:name]}'s favourite hobby is #{students[counter][:hobby]}"

    counter += 1

    hobby = gets.chomp
    end
  end
  students
end

# print header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# iterates over array and prints the name in each element with number
def print(students)
  counter = 0
  while counter < students.count do
    puts "#{counter + 1}. #{students[counter][:name]} (#{students[counter][:cohort]} cohort), (Favourite hobby: #{students[counter][:hobby]})"
    counter += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students."
end

#must call the methods otherwise nothing happens
students = input_students
print_header
print(students)
print_footer(students)
