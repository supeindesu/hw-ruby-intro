# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if (arr.empty?)
    return 0
  else
    totalsum = 0
    arr.each do |x|
      totalsum += x
    end
    return totalsum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if (arr.empty?)
    return 0
  elsif (arr.length > 1)
    totalsum = 0
    longitud = arr.length
    arr.sort!
    totalsum = arr[longitud-1] + arr[longitud-2]
    return totalsum
  else
    totalsum = arr[0]
    return totalsum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if (arr.empty? == false &&  arr.length > 1)
    arr.sort!
    left = 0
    right = arr.length - 1
    while (left < right) do
    	sum = arr[left] + arr[right]
    	if (sum == n)
        return true
    	elsif (sum < n)
	  	  left = left + 1
    	elsif (sum > n)
        right = right - 1
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s != "")
    return s[0].downcase =~ /\A[bcdfghijklmnpqrstvwxyz]/
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s != "")
    longitud = s.length - 1
    i = 0
    until i > longitud  do
      if (s[i] =~ /\A[^01]/)
        return false
      end
      i += 1;
    end
    entero = s.to_i(2)
    return true if ((entero % 4) == 0)
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  def initialize (isbn, price)
    while (isbn == "")
      raise ArgumentError.new("ISBN can't be empty")
    end
    while (price.to_f <= 0.0)
      raise ArgumentError.new("Price must be a positive number")
    end
    @isbn = isbn
    @price = price.to_f
  end
  def price_as_string
    formatted_price = "$"+('%.2f' % price).to_s
    return formatted_price
  end
end
