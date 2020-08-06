dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substring(string,dictionary)
  input_arr=string.downcase
  dictionary.reduce(Hash.new(0)) do |result,value|  
    if input_arr.include?(value)
      result[value]=input_arr.scan(value).length 
    end
    result
  end
end

puts "enter what to check for dictionary word count?"
inputstring = gets.chomp
puts "result of the word count is #{substring(inputstring,dictionary)}"