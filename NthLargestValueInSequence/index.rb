# Given a set of unordered values, find the nth largest
# multiple of k in the sequence.
# Duplicate values should be ignored.
# If there are no matches, return -1.

# Rephrased question - Here is a list of values, find the
# (n)th largest value of multiplication of (k) in the list of values.

# Case 1
  # values =  [4, 9, 3, 12, 6, 4, 15]
  # n = 4
  # k = 3
  # output = 6
  # Find the 4th index of multiplication of 3

# Case 2
  # values =  [123, 123]
  # n = 123
  # k = 123
  # output = -1
  # Find the 123th index of multiplication of 123


def solution(values, n, k)
  seen_values = {}
  current_n = 0
  filtered_values = values.select { |x| (x % k).zero? }.sort.uniq.reverse

  filtered_values.each do |value|
    next if seen_values[value] == true

    current_n += 1
    return value if n == current_n
  end

  -1
end


def solution2(values, n, k)
  output = values.select { |x| (x % k).zero? }.sort.uniq.reverse[n-1]
  output ? output : -1
end
