class RPS
  attr_accessor

  def initialize(player, cpu)
    @player = player
    @cpu = cpu
  end

  def play()
    while @player != @cpu

      case @player == "R"
        when @cpu == "S"
          return "You win"
        when @cpu == "P"
          return "You lose"
      end

      case @player == "P"
        when @cpu == "R"
          return "You win"
        when @cpu == "S"
          return "You lose"
      end

      case @player == "S"
      when @cpu == "R"
        return "You win"
      when @cpu == "P"
        return "You lose"
      end
    end
    return "It's a tie!"
  end
end
