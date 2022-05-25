# --- Directions
# Given a string, return true if the string is a palindrome
# or false if it is not.  Palindromes are strings that
# form the same word if it is reversed. *Do* include spaces
# and punctuation in determining if the string is a palindrome.
# --- Examples:
#   palindrome("abba") === true
#   palindrome("abcdefg") === false

class Index
  def solution1(str)
    str == str.reverse
  end

  def solution2(str)
    splited_str = str.chars
    splited_reverse = str.reverse.chars

    zipped_values = splited_str.zip(splited_reverse)

    zipped_values.map { |x, y| x == y }.none?(false)
  end

  def solution3(str)
    str.difference(str.reverse)
  end
end
