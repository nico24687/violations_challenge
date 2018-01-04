require 'pry'
require 'csv'

unique_count = {}


CSV.foreach('violations.csv', :headers => true) do |row|
  unique_count[row[5]] ||= 0
  unique_count[row[5]] += 1
end


unique_count.each do |val, count|
  puts "#{val}: #{count} time(s)"
end