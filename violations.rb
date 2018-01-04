require 'pry'
require 'csv'

unique_count = {}


CSV.foreach('violations.csv', :headers => true) do |row|
  unique_count[row[5]] ||= 0
  unique_count[row[5]] += 1
end


  
unique_count.each do |value, count|
  puts "-------" * 15 
  puts "#{value}: #{count} time/s, first occured on: , last occured on: "
end
