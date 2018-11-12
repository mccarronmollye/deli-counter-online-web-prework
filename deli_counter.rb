require 'pry'

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    katz_deli.each_with_index do |name, index|
    current_line << " #{index+1}. #{name}"
    end
    puts current_line
  end
end

def take_a_number(katz_deli)
  #katz_deli is now an array of ticket numbers...not names
  # the first time this method gets called, we want to shovel in the number 1, and so on
  ticket_num = katz_deli.length + 1
  katz_deli << ticket_num
  # [1]
  puts "Welcome, you are ticket number #{ticket_num}. You are number #{ticket_num} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving ticket number #{katz_deli[0]}."
    katz_deli.shift
end
end

katz_deli = []
#other_deli = ["Logan", "Avi", "Spencer"]
take_a_number(katz_deli)
take_a_number(katz_deli)
now_serving(katz_deli)
now_serving(katz_deli)
take_a_number(katz_deli)
# Welcome, you are ticket number 1. You are number 1 in line.
