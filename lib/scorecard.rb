class Scorecard

  def initialize(io, throw_score)
    @io = io
    @regular_score = {}
    @throw_score = throw_score
  end

  def all_scorecard
    @regular_score.each do |key, value|
      return "#{key} = #{value}"
    end
  end

  def add_score
  @regular_score = {
    "Frame" => 1,
    "1st Throw" => @throw_score
  }
    @io.puts "Your throw scored #{@throw_score}"
  end

  def frame
    return @regular_score["Frame"]
  end
end
