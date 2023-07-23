# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result=0
  arr.each do |x|
    result += x
  end
  result
end

def max_2_sum(arr)
  sorted_arr = arr.sort.reverse
  sorted_arr.take(2).reduce(0, :+)
end

def sum_to_n?(arr, n)
  return false if arr.length < 2

  seen_numbers = Set.new
  arr.each do |num|
    return true if seen_numbers.include?(n - num)

    seen_numbers.add(num)
  end

  false
end


# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  /^[bcdfghjklmnpqrstvwxyz]/i.match?(s)
end


def binary_multiple_of_4?(s)
  return false unless /^[01]+$/.match?(s)

  binary_num = s.to_i(2)
  binary_num % 4 == 0
end


# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError, 'ISBN cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price should be greater than 0' if price <= 0
  end

  def price_as_string
    format('$%.2f', @price)
  end

  def price_with_discount(percent)
    discount = @price * percent / 100.0
    @price - discount
  end
end

