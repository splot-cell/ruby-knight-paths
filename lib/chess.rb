# frozen_string_literal: true

# Module with chess board helper functions
module Chess
  def within_bounds(position)
    return false unless position[0].between?(0, 7)

    position[1].between?(0, 7)
  end
end
