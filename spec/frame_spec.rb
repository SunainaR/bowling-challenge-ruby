require 'frame'

describe Frame do

  context "Attempt to add frame with total > 10" do
    it "raises an error" do
      frame_1 = Frame.new
      frame_1.add(5)
    expect{ frame_1.add(7) }.to raise_error "Frame Total > 10: Can't add this roll."
    end
  end

  context "Attempt to add frame with 4 rolls" do
    it "raises an error" do
      frame_1 = Frame.new
      frame_1.add(1)
      frame_1.add(2)
      frame_1.add(3)
    expect{ frame_1.add(4) }.to raise_error "Frame End Reached: Can't add more rolls."
    end
  end

  context "frame added with one roll no bonuses" do
    it "returns the running frame total as an integer" do
      frame_1 = Frame.new
      frame_1.add(4)
    expect(frame_1.frame_total).to eq 4
    end
  end

  context "frame added with two rolls no bonuses" do
    it "returns one frame as an array" do
      frame_1 = Frame.new
      frame_1.add(0)
      frame_1.add(1)
      expect(frame_1.all).to eq([0,1])
    end

    it "returns the frame total as an integer" do
      frame_1 = Frame.new
      frame_1.add(5)
      frame_1.add(3)
      expect(frame_1.frame_total).to eq 8
    end

  end
end