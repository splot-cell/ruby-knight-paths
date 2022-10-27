# frozen_string_literal: true

require_relative "./knight_moves"

puts "The shortest route between [0, 0] and [7, 7] is:"
pp knight_moves([0, 0], [7, 7])

puts "The shortest route between [2, 5] and [4, 7] is:"
pp knight_moves([2, 5], [4, 7])
