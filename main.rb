require_relative 'lib/pascal_triangle'
require_relative 'helpers/main_helpers'
include MainHelpers
  puts
  puts "Type how much rows you want to calculate in Pascal's triangle:"
  puts "To quit program type :q"
  puts
  while  rows = gets.chomp
    if rows == ":q"
      break
    else 
      rows = rows.to_i
      pt = PascalTriangle.new(rows)
      if pt.valid_number?
        puts "The result of Pascal's triangle with #{rows} " + pluralize(rows, 'row') + " is: "
          pt.calculate_triangle.each do |value|
            puts value.join(" ")
          end
      puts
      puts "Type how much rows you want to calculate in Pascal's triangle:"
      else
        puts
        puts "You can type only number, the number must be bigger than zero."
        puts "The number must be less then 100, we don't want to burden your machine."
        puts "Please type the valid number:"
        puts
      end  
    end
  end
