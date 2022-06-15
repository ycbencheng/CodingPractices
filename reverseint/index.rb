 # --- Directions
 # Given an integer, return an integer that is the reverse
 # ordering of numbers.
 # --- Examples
   # reverseInt(15) === 51
   # reverseInt(981) === 189
   # reverseInt(500) === 5
   # reverseInt(-15) === -51
   # reverseInt(-90) === -9

class Index
  def solution1(int)
    int.positive? ? reverse(int) : - reverse(int.abs)
  end

  def solution2(int)
    int < 0 ? reverse(int) * -1 : reverse(int)
  end

  def reverse(int)
    int.to_s.split('').reverse.join.to_i
  end
end
