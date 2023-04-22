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
      app = Application.new(io)
      app.run
    end
  end
end