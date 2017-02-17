class Team
  attr_accessor :name

  def initialize
    @@matches = ["V", "I", "C", "T", "O", "R", "Y"]
  end

  def to_numbers
    numbers = []
    @@matches.each do |char|
      numbers << name.upcase.scan(/#{char}/).count
    end
    numbers
  end

  def calculate numbers=nil
    result = []
    numbers = numbers.nil? ? to_numbers : numbers
    while numbers.length > 1
      val = numbers.shift + numbers.first
      val >= 10 ? result.push(1) : result.push(val % 10)
      result.flatten!
    end
    result.length > 2 ? calculate(result) : Integer(result.join)
  end
end
