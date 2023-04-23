class Frame 

  def initialize
    @frame = []
  end

# How can I refactor this to make it more modular/encapsulated?
  def add(roll)
    expected_frame_total = self.frame_total + roll.to_i

    if  expected_frame_total > 10
      fail "Frame Total > 10: Can't add this roll."
    elsif @frame.length < 3
      @frame << roll.to_i
    else
      fail "Frame End Reached: Can't add more rolls."
    end
  end

  def all
    @frame
  end

  def frame_total
    @frame.sum
  end
  
end