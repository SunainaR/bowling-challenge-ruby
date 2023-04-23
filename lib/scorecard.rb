require_relative 'frame'

class Scorecard
  def initialize
    @scorecard = []
  end

  def add(frame)
    if @scorecard.length < 10
      @scorecard << frame
    else
      fail "Game End reached: Can't add more frames"
    end
  end

  def all
    @scorecard
  end

  def search_by_frame_num(frame_num)
    @scorecard[frame_num.to_i - 1]
  end

  def game_total
    @scorecard.map do |frame|
      frame.frame_total
    end.sum
  end
  
end
