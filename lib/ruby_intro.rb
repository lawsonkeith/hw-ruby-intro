# When done, submit this entire file to the autograder.

# Part 1  ########################################################################

def sum arr
  # YOUR CODE HERE
	sum=0
	arr.each { |x| sum += x}
	sum
end

#puts sum [3333,4,2,1,]

def max_2_sum arr
  # YOUR CODE HERE
	arr.sort!
	len = arr.length
	sum = arr[len-1] + arr[len-2]
end

#puts max_2_sum [34,3,3,3,66,99,1]

def sum_to_n? arr, n
  # YOUR CODE HEREh#-------------------------------
  #check range
  if arr.length < 2
    return false
  end
  
  #get permutations
  new = arr.permutation(2).to_a
  
  #check if permutations == n
  new.each do |a,b| 
    if a + b == n
      return true
    end
  end
  
  #no match
  return false
end

#puts sum_to_n? [4,4,5] , 11


# Part 2 ########################################################################

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

#puts hello "Keith"

def starts_with_consonant? s
  # YOUR CODE HERE
  s.downcase!
  !s.start_with? "a","e","i","o","u"
end

#puts starts_with_consonant? "pYO"

def binary_multiple_of_4? s
  bin = s.to_i(2)
  check = bin.to_s(2)
  
  #string error check
  if check == s
    #modulo check
    if bin % 4 == 0
      return true
    end
  end
  
  return false
end

#puts binary_multiple_of_4? "1110"
# Part 3  ########################################################################
class BookInStock
  
   def initialize(isbn_number, price)  
    # Instance variables  
    @isbn_number = isbn_number
    @price = price
    
    if @price < 0 
      puts "price error"
    end
    
    if  @isbn_number.length < 1
      puts "ISBN error"
    end
  end 
  
  attr_accessor :price
  attr_accessor :isbn_number
  
  def price_as_string 

    return "£%0.2f" % [price.to_s]
   

  end
  
end

