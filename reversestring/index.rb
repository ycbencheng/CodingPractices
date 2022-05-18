class Index
  def solution1(str)
    "#{str.reverse}"
  end

  def solution2(str)
    new_lt = [].join

    splitted = str.split('')

    (1..splitted.count).each do |spl|
      new_lt << splitted.pop
    end

    new_lt
  end

  def solution3(str)

  end
end
