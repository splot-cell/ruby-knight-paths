# frozen_string_literal: true

require_relative "./knight"

# Returns an array showing the shortest possible moves between the current_pos
# and the target_pos for a knight on a chess board.
# Positions are arrays representing coordinates in the form [a, b], where a and
# b are between 0 and 7.
def knight_moves(current_pos, target_pos)
  starting_knight = Knight.new(current_pos)
  queue = []
  k = starting_knight

  until k.position == target_pos
    k.possible_moves.map { |position| Knight.new(position, k) }
                    .each { |child| queue << child }
    k = queue.shift
  end

  steps = []
  until k.nil?
    steps << k.position
    k = k.parent
  end
  steps.reverse
end

pp knight_moves([1, 1], [5, 5])
