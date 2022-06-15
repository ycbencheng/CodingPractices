# --- Directions
# Given a string, return the character that is most
# commonly used in the string.
# --- Examples
# maxChar("abcccccccd") === "c"
# maxChar("apple 1231111") === "1"

class Index
  def solution1(str)
    tally_hash = str.split('').tally
    tally_hash.key(tally_hash.values.max)
  end

  def solution2(str)
    max_char = 0
    char_count = 0

    grouped_chars = str.split('').group_by(&:itself)

    grouped_chars.each do |key, value|
      if value.count > char_count
        max_char = key
        char_count = value.count
      end
    end

    max_char
  end
end
