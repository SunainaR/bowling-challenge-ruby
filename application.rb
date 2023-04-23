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
    @roll_score = @io.gets.chomp.to_i

  end

end

# app = Application.new(Kernel)
# app.run