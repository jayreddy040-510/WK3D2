class Card
    attr_accessor :face_value
    def initialize(face_value, face_up)
        @face_value = face_value
        @face_up = face_up
    end

    def face_up
        @face_up
    end

    def face_up=(value)
        @face_up = value
    end

    def make_deck
        deck = []
        arr = ("A".."Z").to_a
        arr.shuffle!
        arr.each do |el|
            card = Card.new(el, false)
            deck << card
        end
        
        deck
    end

    def hide
        if self.face_up == true
            self.face_up = false
            return true
        else
            return false
        end
    end

    def reveal
        if self.face_up == false
            self.face_up = true
            return true
        else
            return false
        end
    end

    def to_s
        self.face_value.to_s
    end

    # def ==(sec_card)
    #     self.face_up == sec_card.face_up
    # end

    


end