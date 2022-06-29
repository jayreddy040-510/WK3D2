class Card

    attr_accessor :face_value, :face_up
    def initialize(face_value, face_up)
        @face_value = face_value
        @face_up = face_up
    end

    def display
        if self.face_up == true
            p self.face_value 
        else
            puts '_' 
        end
    
    end

    def hide
        self.face_up = false
    end

    def reveal
        self.face_up = true
    end

    def to_s
        self.face_value.to_s
    
    end

    def ==(sec_card)
        self.face_value == sec_card.face_value
    
    end

    # def face_up
    #     @face_up
    # end

    # def face_up=(value)
    #     @face_up = value
    # end

    # def make_deck
    #     deck = []
    #     arr = ("A".."Z").to_a
    #     arr.shuffle!
    #     arr.each do |el|
    #         card = Card.new(el, false)
    #         deck << card
    #     end
        
    #     deck
    # end





    # def to_s
    #     self.face_value
    # end

    # # def ==(sec_card)
    # #     self.face_up == sec_card.face_up
    # # end

    


end