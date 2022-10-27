# frozen_string_literal: true

require_relative "./chess"

# Class that tracks a knight's position and calculates it's possible moves
class Knight
  include Chess

  def initialize(position)
    @position = position
  end

  # An array of absolute positions of the knight after making all possible moves
  # from its current position
  def possible_moves
    possible_translations.map { &translate_position }
                         .keep_if { &within_bounds }
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

  # Translates the knight's current position by arr in form of [x, y]
  # New position is [current x + x, current y + y]
  def translate_position(arr)
    @position[0] += arr[0]
    @position[1] += arr[1]
  end
end
