require 'scorecard'

describe Scorecard do
  context "Add 10 frames no bonuses" do
    it 'returns the game total as integer' do
      my_scorecard = Scorecard.new
      n = 1
      10.times do
      frame = Frame.new
      frame.add(0)
      frame.add(2)
      my_scorecard.add(frame)
      n=+1
      end
      expect(my_scorecard.game_total).to eq 20
    end
  end

  context "Attempt to add 11 frames no bonuses" do
    it 'returns an error' do
      my_scorecard = Scorecard.new
      n = 1
      10.times do
      frame = Frame.new
      frame.add(0)
      frame.add(2)
      my_scorecard.add(frame)
      n=+1
      end
      frame = Frame.new
      frame.add(0)
      frame.add(2)
      expect{ my_scorecard.add(frame) }.to raise_error "Game End Reached: Can't add more frames."
    end
  end

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
      expect(my_scorecard.search_by_frame_num(2)).to eq frame_2
    end

    it "return a game total as an integer" do
      my_scorecard = Scorecard.new
      frame_1 = Frame.new
      frame_1.add(0)
      frame_1.add(2)
      frame_2 = Frame.new
      frame_2.add(7)
      frame_2.add(2)
      my_scorecard.add(frame_1)
      my_scorecard.add(frame_2)
      expect(my_scorecard.game_total).to eq 11
    end

  end
end
      