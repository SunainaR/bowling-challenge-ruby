require_relative 'frame'

class Scorecard
  def initialize
    @scorecard = []
  end

  def add(frame)
    @scorecard << frame
  end

  def all
    @scorecard
  end

  def search_by_frame_num(frame_num)
    @scorecard[frame_num.to_i - 1]
  end
  
end
