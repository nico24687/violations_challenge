require 'pry'
require 'csv'

unique_count = Hash.new(0)



CSV.foreach('violations.csv', :headers => true) do |row|
  unique_count[row[5]] += 1
  dates = row["violation_date"]
end


  
unique_count.each do |value, count|
  puts "-------" * 15 
  puts "#{value}: #{count} time/s, first occured on: #{} , last occured on: #{} "
end


