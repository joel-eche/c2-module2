def assert_equal(expected, actual, method)
  if expected == actual
    puts "#{method} returned #{actual} as expected."
  else
    puts "KAPUTT! #{method} did not return #{expected} as expected, but actually returned #{actual}."
  end
end

def map(array)
  result = []

  if block_given?
      array.each {|element| result << yield(element)}
  else
      result = array.dup
  end

  result
end

cases = [
  {expected: [2, 4, 6], actual: map([1, 2, 3]) { |el| el * 2 }, method: "map([1, 2, 3]) { |el| el * 2 }"},
  {expected: [1, 2, 3], actual: map([1, 2, 3]), method: "map([1, 2, 3])"},
  {expected: [5, 10, 15], actual: map([1, 2, 3]) { |el| el * 5 }, method: "map([1, 2, 3]) { |el| el * 5 }"},
]

cases.each { |c| assert_equal(c[:expected], c[:actual], "method #{c[:method]}") }