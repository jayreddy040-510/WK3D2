require "byebug"
require_relative "card.rb"

class Board
    

    def initialize
        @grid = Array.new(4) {Array.new(4,"_")}
        @size = 16

    end

    


    def [](pos)
        row,col = pos
        @grid[row][col]
    end

    def []=(pos, value)
        row,col = pos
        @grid[row][col]= value
    end

    def empty?(pos)
        if self[pos] == "_"
            return true
        else
            return false
        end
    end

    def empty_positions?
        @grid.each do |row|
            row.each do |x|
                if x == "_"
                    return true
                end
            end
        end
        return false
    end


    def populate
        alphas = ("A".."H").to_a.shuffle!
        input = []
        alphas.each do |char|
            c1 = Card.new(char,false)
            c2 = Card.new(char,false)
            input<<c1<<c2
        end
    
        @grid.each_with_index do |row, idx1|
            row.each_with_index do |col, idx2|
                pos = [idx1, idx2]
                p = input.shuffle!
                self[pos] = p.pop
            end
        end
    end 
    
    def render
        @grid.each do |row|
            row.each do |el|
                el.display
                

            end
            puts row.join(" ")
        end
            
    end
    
    
end

#     arr = ("A".."Z").to_a
# self[pos] = arr.shuffle.pop
#     def populate
# #
#         card = Card.new("F", false)
#         deck = card.make_deck
#         deck.each do |el|
#             while self.empty_positions?
#                 row = rand(0...@grid.length)
#                 col = rand(0...@grid.length)
#                 row2 = rand(0...@grid.length)
#                 col2 = rand(0...@grid.length)
#                 if (@grid[[row,col]].to_s == "") && (@grid[[row2,col]].to_s == "")  &&  (@grid[[row,col]] != @grid[[row2,col2]])
#                     @grid[row][col] = el
#                     @grid[row2][col2] = el
#                 end
#             end
                
#         end
    
    
#     end

    def print
        @grid.each do |row|
            # row.each do |el|
                # if el
                # # el.reveal
                # end
            # end
            puts row.join(" ")
        end
    end
        


