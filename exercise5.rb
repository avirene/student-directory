# Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc.

students = [
  {name: "Dr. Hannibal Lecter", country: "USA", cohort: :november},
  {name: "Darth Vader", country: "Galactic Empire", cohort: :november},
]

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]}, #{student[:country]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

print_header
print(students)
print_footer(students)