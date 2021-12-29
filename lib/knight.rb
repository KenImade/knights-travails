class Knight

    attr_reader :position
    attr_accessor :children, :parent

    @@knights_moves = [
        [-2, 1],
        [-1, 2],
        [1, 2],
        [2, 1],
        [2, -1],
        [1, -2],
        [-1, -2],
        [-2, -1]
    ]

    def initialize(position, parent = nil)
       @position = position
       @children = []
       @parent = parent
    end

    def possible_moves
        valid_moves = @@knights_moves.map do |move|
            move.each_with_index.map { |n, i| n + @position[i] unless (n + @position[i]).negative? || (n + @position[i]) > 7}
        end
        valid_moves.delete_if {|move| move.include?(nil)}
    end
end