def input_students

  students = []

  #while the name is not empty, repeat this code
  while true do
    student_list = Hash.new
    puts "Please enter the name of the student".center(65)
    puts "To finish, just hit return twice".center(65)
    name = gets.chomp
    return students if name.empty?
    student_list[:name] = name
    student_list[:cohort] = get_cohort
    student_list[:hobby] = input_hobby
    students << student_list
    puts "Now we have #{students.count} students".center(65)
    end
  end
  #return the array of students

def get_cohort
  months = [:January, :February, :March, :April, :May, :June, :July, :August,
    :September, :October, :November, :December]

  puts "Please enter the cohort you will be joining".center(65)
  cohort = gets.chomp.to_sym.capitalize

    if !cohort.empty? && months.include?(cohort)
      return cohort
    elsif !cohort.empty? && !months.include?(cohort)
      puts "Please enter a valid cohort".center(65)
      cohort = gets.chomp.to_sym.capitalize
    elsif cohort.empty?
      cohort = :November
    end
  cohort
end

# add hobby to students array
def input_hobby
# ask user to input their fav hobbu
  puts "What is your favourite hobby?".center(65)
  hobby = gets.chomp.to_sym.capitalize
  if !hobby.empty?
    hobby
  elsif hobby.empty?
    "Please enter a hobby".center(65)
    hobby = gets.chomp.to_sym.capitalize
  end
hobby
end

# print header
def print_header
  puts "The students of Villains Academy".center(65)
  puts "-------------".center(65)
end

# iterates over array and prints the name in each element with number
def print(students)
  students.each do |student|
    student.each do |catergory, value|
      puts "#{catergory.to_s.capitalize}: #{value}".center(65)
    end
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students.".center(65)
end

#must call the methods otherwise nothing happens
students = input_students
print_header
print(students)
print_footer(students)
