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

    def above_market_average?
        if price < 500000
            false
        else
            true
        end
    end

    def rooms_from_category(category)
        rooms.select {|room| room.category == category}
    end

    def area 
        areas = 0
        rooms_area = rooms.map do |room|
            room_width = room.width.to_i
            room_area = room.length * room_width 
        end
        rooms_area.sum
    end

    # def details
    #     detail = Hash.new(@house)

    # end
end