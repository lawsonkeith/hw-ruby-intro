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
	if len == 1 
	  return arr[0];
	elsif len == 0
	  return 0
	end
	 
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
  s.start_with? "b","c","d","f","g","h","j","l","m","n","p","q","r","s","t","v","w","x","y","z"
end

#puts starts_with_consonant? "pYO"

def binary_multiple_of_4? s
  bin = s.to_i(2)
  num = s.count "10"

  #string error check
  if (num == s.length) && num > 0
    #modulo check
    if bin % 4 == 0
      return true
    end
  end
  
  return false
end

#puts binary_multiple_of_4? "01100"
# Part 3  ########################################################################
class BookInStock
  
   def initialize(isbn, price)  
    # Instance variables  
    @isbn = isbn
    @price = price
    
    if @price <= 0 
      raise ArgumentError 
      puts "price error"
    end
    
    if  @isbn.length < 1
      raise ArgumentError 
      puts "ISBN error"
    end
  end 
  
  attr_accessor :price
  attr_accessor :isbn
  
  def price_as_string 

    return "$%0.2f" % [price.to_s]
   

  end
  
end

