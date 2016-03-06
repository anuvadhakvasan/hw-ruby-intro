# When done, submit this entire file to the autograder.

# Part 1

def sum arr
   return 0 if arr == []
   arr.inject(:+)
  # YOUR CODE HERE
end

def max_2_sum arr
   return arr[0]  if arr.count == 1
   a = arr.sort.pop(2)
   sum(a)
  # YOUR CODE HERE
end

def sum_to_n? arr, n
   result = false
   if arr.count >= 2
      a = arr.combination(2).to_a
      a.each do |e| 
        s = sum(e)
        result = true if s == n
      end
   end
   return result
  # YOUR CODE HERE
end

def sum_to_n_alt array, n
   array.combination(2).to_a.map {|e| sum(e) == n}.include?(true)  
end   
# Part 2

def hello(name)
    "Hello, " + name
  # YOUR CODE HERE
end

def starts_with_consonant? s
    #return false if s.empty? 
    #l = s[0] =~ /[[:alpha:]]/ 
    #return false if l == nil
    #k =  s =~ /[AEIOUaeiou]/ 
    #return true unless k == 0
    !!(s =~  /^[b-df-hj-np-tv-z]/i)
    # YOUR CODE HERE
end

def binary_multiple_of_4? s
    #l = s =~ /^[01]+$/
    #return false if  l == nil
    #int = s.to_i(2)
    #return int % 4 == 0
  if s =~ /^[01]+$/
     s.to_i(2) % 4 == 0
  else 
     false
  end    
    # YOUR CODE HERE
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn  = isbn
    @price  = price
  end

  def price_as_string
    "$%.2f" % @price
  end
# YOUR CODE HERE
end
