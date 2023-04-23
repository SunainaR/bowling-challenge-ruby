class Frame 

  def initialize
    @frame = []
  end

  def add(roll)
    @frame << roll.to_i
  end

  def all
    @frame
  end
end