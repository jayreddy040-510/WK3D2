require "byebug"
require_relative "card.rb"

class Board

    def initialize(n)
        @grid = Array.new(n) {Array.new(n,"")}
        @size = n**2

    end



    def [](pos)
        @grid[pos[0]][pos[1]]
    end

    def []=(pos, value)
        @grid[pos[0]][pos[1]] = value
    end

    def empty?(pos)
        if @grid[pos[0]][pos[1]] == ""
            return true
        else
            return false
        end
    end

    def empty_positions?
        @grid.each do | row|
            row.each do |x|
                if x == ""
                    return true
                end
            end
        end
        return false
    end


    def populate

        card = Card.new("F", false)
        deck = card.make_deck
        deck.each do |el|
            while self.empty_positions?
                row = rand(0...@grid.length)
                col = rand(0...@grid.length)
                row2 = rand(0...@grid.length)
                col2 = rand(0...@grid.length)
                if (@grid[[row,col]].to_s == "") && (@grid[[row2,col]].to_s == "")  &&  (@grid[[row,col]] != @grid[[row2,col2]])
                    @grid[row][col] = el
                    @grid[row2][col2] = el
                end
            end
                
        end
    
    
    end

    def print
        @grid.each do |row|
            row.each do |el|
                if el
                # el.reveal
                end
            end
            puts row.join(" ")
        end
    end
        



end