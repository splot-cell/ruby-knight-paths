# frozen_string_literal: true

require_relative "./knight"

# Returns an array showing the shortest possible set of moves between the
# starting_pos and the target_pos for a knight on a chess board.
# Positions are arrays representing coordinates in the form [a, b], where a and
# b are between 0 and 7.
def knight_moves(starting_pos, target_pos)
  k = Knight.new(starting_pos)
  queue = []
  # Perform breadth-first search until a Knight with target position is found
  until k.position == target_pos
    k.possible_moves
     .map { |position| Knight.new(position, k) }
     .each { |child| queue << child }
    k = queue.shift
  end

  # Retrieve the history of the found Knight's moves, then reverse it to give
  # the steps from starting_pos to ending_pos
  move_history(k).reverse
end

def move_history(knight)
  steps = []
  until knight.nil?
    steps << knight.position
    knight = knight.parent
  end
  steps
end
