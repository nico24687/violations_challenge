require 'pry'
require 'csv'

contents = CSV.open 'violations.csv', headers: true, header_converters: :symbol

contents.each do |row|
   type = row[:violation_type]
end 
