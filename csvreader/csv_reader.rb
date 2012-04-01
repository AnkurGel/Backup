require 'csv'
require_relative 'book_in_stock'
class CsvReader
def initialize
@book_in_stock=[] #initially
end

def read_in_csv_data(csv_file_name) #arg
CSV.foreach(csv_file_name, headers: true) do |row|
@book_in_stock<<BookInStock.new(row["ISBN"], row["Amount"])
end
end
def total_value_in_stock
sum=0.0
@book_in_stock.each{|book| sum+=book.price}
sum #return
end
end
