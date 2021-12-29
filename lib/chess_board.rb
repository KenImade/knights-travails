require_relative "knight"

class ChessBoard
   
    def knight_moves(start, destination)
        current = make_tree(start, destination)
        visited = []
        make_visited_tree(current, visited, start)
        display_knight_moves(visited, start, destination)
    end

    def make_tree(src, dst)
        queue = [Knight.new(src)]
        current = queue.shift
        until current.position == dst
            current.possible_moves.each do |move|
                current.children << knight = Knight.new(move, current)
                queue << knight
            end
            current = queue.shift
        end
        current
    end
    
    def make_visited_tree(current, visited, start)
        until current.position == start
            visited << current.position
            current = current.parent
        end
        visited << current.position
    end

    def display_knight_moves(visited, start, destination)
        puts "You made it in #{visited.size - 1} moves!"
        puts "To get from #{start} to #{destination} your shortest path is: "
        visited.reverse.each {|move| puts move.to_s}
    end
end