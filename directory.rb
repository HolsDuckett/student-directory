def interactive_menu
  students = []
  loop do
  # 1. Print the menu and ask the user what to do
    puts "1. Input the student"
    puts "2. Show the students"
    puts "9. Exit"
  # 2. read the input and save it into a variable
    selection = gets.chomp
  # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit  # this will cause the program to terminate
    else
      puts  "I dont know what you meant, try again"
    end
  # 4. repeat from step 1
  end
end


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
end


def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

#must call the methods otherwise nothing happens

interactive_menu
print_header
print(students)
print_footer(students)
