# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

## 2. Design the Class System

See Excalidraw for Entity Relationship Diagram.

```ruby
class Scorecard
  def initialize
    # ...
  end

  def add(frame) # frame is an instance of Frame
    # Adds new frame to the scorecard
  end

  def all
    # Returns a list of all frame objects
  end
  
  def search_by_frame_num(frame_num) # keyword is a string
    # Returns a frame object based on frame_id
  end

  def game_total
  # returns the running total score for the game so far
  end
end

class Frame
  def initialize

  # ...

  end

  def add(roll) #rolls is an array of rolls
    # Adds a new roll to a frame
  end

  def all
    # returns all roll objects in a frame
  end

  def search_by_roll_id(roll_id)
    # returns the frame object based on roll_id
  end

  def frame_total
   # returns the running total score for the frame
   # Note: frame total can't be > 10
  end
end

# # Roll can just be a struct for now
# class Roll < Struct.new(:roll_score)
# end
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# EXAMPLE
# Gets all frames
my_scorecard = ScoreCard.new
frame_1 = Frame.new
frame_1.add([0,0])
frame_2 = Frame.new
frame_2.add([0,0])
my_scorecard.add(frame_1)
my_scorecard.add(frame_2)
my_scorecard.all => [frame_1, frame_2]

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# EXAMPLE

# Constructs a track
track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._