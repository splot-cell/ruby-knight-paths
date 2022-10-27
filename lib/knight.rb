# frozen_string_literal: true

require_relative "./chess"

# Class that tracks a knight's position and calculates it's possible moves
class Knight
  include Chess

  attr_reader :position, :parent

  # "position" is an array representing a coordinate [a, b] showing the position
  # of the knight on the chess board. a and b are between 0 and 7.
  # "parent" can be used to point to the Knight object in its previous position.
  # This allows the history of a Knight's movements to be tracked by following
  # the linked list of parents.
  def initialize(position, parent = nil)
    @position = position
    @parent = parent
  end

  # An array of absolute positions of the knight after making all possible moves
  # from its current position
  def possible_moves
    possible_translations.map { |t| translate_position(t) }
                         .keep_if { |p| within_bounds(p) }
  end

  private

  # The relative movements the knight can make
  def possible_translations
    [[1, 2],
     [-1, 2],
     [1, -2],
     [-1, -2],
     [2, 1],
     [2, -1],
     [-2, 1],
     [-2, -1]]
  end

  # Returns the knight's current position translated by arr in form of [a, b]
  # New position is [current x + a, current y + b]
  def translate_position(arr)
    x = @position[0] + arr[0]
    y = @position[1] + arr[1]
    [x, y]
  end
end
