class TeamCommand
  class << self
    def fight!(a, b)
      score_a = a.calculate
      score_b = b.calculate
      unless score_a == score_b
        score_a > score_b ? { winner: a.name, score: score_a } : { winner: b.name, score: score_b }
      else
        { winner: 'a draw', score: score_a } if score_a == score_b
      end
    end
  end
end
