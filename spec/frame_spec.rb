require 'frame'

describe Frame do
  context "one frame added" do
    it "returns one frame" do
      frame_1 = Frame.new
      frame_1.add(0)
      frame_1.add(1)
      expect(frame_1.all).to eq([0,1])
    end
  end
end