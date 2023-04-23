require 'scorecard'

describe Scorecard do
  context "for first two rolls and no bonuses" do
    it "return a list of frame objects" do
      my_scorecard = Scorecard.new
      frame_1 = Frame.new
      frame_1.add(0)
      frame_1.add(2)
      frame_2 = Frame.new
      frame_2.add(7)
      frame_2.add(2)
      my_scorecard.add(frame_1)
      my_scorecard.add(frame_2)
      expect(my_scorecard.all).to eq [frame_1, frame_2]
    end

    it "return a frame by frame_id" do
      my_scorecard = Scorecard.new
      frame_1 = Frame.new
      frame_1.add(0)
      frame_1.add(2)
      frame_2 = Frame.new
      frame_2.add(7)
      frame_2.add(2)
      my_scorecard.add(frame_1)
      my_scorecard.add(frame_2)
      expect(my_scorecard.search_by_frame_num(1)).to eq frame_1
    end

  end
end
      