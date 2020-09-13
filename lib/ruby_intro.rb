# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  array.inject(0){|sum, el| sum + el}
end

def max_2_sum arr
  def max_2_sum(array)
  return 0 if array.empty?
  return array.first if array.length == 1

  array.sort{ |x, y| y <=> x }.take(2).reduce(:+)
  end
end

def sum_to_n? arr, n
       len=arr.length
       if(len==0&&n==0) then return false end

       i=0
       while i<len
          j=i+1
          while j<len
            if(arr[i]+arr[j]==n)  then  return true end
            j=j+1
          end
          i=i+1
       end    
        return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  m = s[0]
  if s.length == 0
     return false
  elsif (m=~/^[b-df-hj-np-tv-z]/i)
     return true
  else return false
  end 
end

def binary_multiple_of_4? s
  bin = /^[1|0]+/.match(s)
	if bin
		return bin.to_s.to_i(2) % 4 == 0
	else
		return false
	end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end

end