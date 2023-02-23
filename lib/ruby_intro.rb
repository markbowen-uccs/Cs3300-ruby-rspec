# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  arr.max(2).sum
end

def sum_to_n? arr, n
  arr.length > 1 && arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.empty?
    return false
  else
    !['a', 'e', 'i', 'o', 'u', 'y'].include?(s[0][0].downcase) && !s.empty?
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    unless isbn != ''
      raise ArgumentError
    end
    unless price > 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end

  def price
    @price
  end

  def price_as_string
    "$#{'%.2f' % @price}"
  end

end
