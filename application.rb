require_relative 'lib/scorecard'

class Application

  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Welcome to your Bowling Scorecard"
    @io.puts "Time for your throw...Knock 'em down!"

    @io.puts "\nHow did it go?"
    @io.puts "Enter the number of pins your knocked down: "
    @throw_score = @io.gets.chomp.to_i
    my_bowling_scorecard = Scorecard.new(@io, @throw_score)
    my_bowling_scorecard.add_score
    # @io.puts "Gutter Game - Don't worry, we've all had one!"
    @io.puts "You are on frame #{my_bowling_scorecard.frame}"
  end

end

# app = Application.new(Kernel)
# app.run