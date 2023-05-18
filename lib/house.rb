class House
    attr_reader :price, 
                :address,
                :rooms

    def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    end

    def price
        no_sign = @price.delete("$")
        final_price = no_sign.to_i
    end

    def add_room(room)
    rooms << room
    end

end