class TeamCommand
  class << self
    attr_accessor :winner, :draw

    def fight!(a, b)
      score_a = a.calculate
      score_b = b.calculate
      if score_a == score_b
        self.draw = true
        self.winner = a
      else
        self.winner = a if score_a > score_b 
        self.winner = b if score_b > score_a 
      end
      self
    end

    def draw?
      self.draw
    end
  end
end
