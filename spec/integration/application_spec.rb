require_relative '../../application'

RSpec.describe Application do
  context "User Input" do
    it "returns the user input prompt" do
      io = double :io
      expect(io).to receive(:puts).with("Welcome to your Bowling Scorecard").ordered
      expect(io).to receive(:puts).with("Time for your throw...Knock 'em down!").ordered
      expect(io).to receive(:puts).with("\nHow did it go?")
      expect(io).to receive(:puts).with("Enter the number of pins your knocked down: ")
      expect(io).to receive(:gets).and_return("0") 
      
      expect(io).to receive(:puts).with("Your throw scored 0")
      expect(io).to receive(:puts).with("You are on frame 1")

      # expect(io).to receive(:puts).with("Your scorecard is: ")
      # expect(io).to receive(:puts).with("Frame = 1")
      # expect(io).to receive(:puts).with("1st Throw = 0")

      # expect(io).to receive(:puts).with("Gutter Game - Don't worry, we've all had one!")
      app = Application.new(io)
      app.run
    end
  end
end