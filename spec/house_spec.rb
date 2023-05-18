require './lib/room'
require './lib/house'


RSpec.describe House do
    describe "Iteration 2" do
        it "exists" do
            house = House.new("$400000", "123 sugar lane")

            expect(house).to be_a House
        end

        it "it has a category" do
            house = House.new("$400000", "123 sugar lane")

            expect(house.price).to eq(400000)
            expect(house.address).to eq("123 sugar lane")
            expect(house.rooms).to eq([])
        end

        it "it can sort to a house" do
            house = House.new("$400000", "123 sugar lane")
            room_1 = Room.new(:bedroom, 10, '13')
            room_2 = Room.new(:bedroom, 11, '15')

            house.add_room(room_1)
            house.add_room(room_2)

            expect(house.rooms).to eq([room_1, room_2])

            
        end
    end
    describe "Iteration 3" do
        it "is above market value" do
            house = House.new("$400000", "123 sugar lane")

            expect(house.above_market_average?).to eq(false)
        end
        it "it can sort into a house" do
            house = House.new("$400000", "123 sugar lane")
            room_1 = Room.new(:bedroom, 10, '13')
            room_2 = Room.new(:bedroom, 11, '15')
            room_3 = Room.new(:living_room, 25, '15')
            room_4 = Room.new(:basement, 30, '41')

            house.add_room(room_1)
            house.add_room(room_2)
            house.add_room(room_3)
            house.add_room(room_4)

            expect(house.rooms_from_category(:bedroom)).to eq([room_1, room_2])
            expect(house.rooms_from_category(:basement)).to eq([room_4])
        end

        it "can get house area" do
            house = House.new("$400000", "123 sugar lane")
            room_1 = Room.new(:bedroom, 10, '13')
            room_2 = Room.new(:bedroom, 11, '15')
            room_3 = Room.new(:living_room, 25, '15')
            room_4 = Room.new(:basement, 30, '41')
            house.add_room(room_1)
            house.add_room(room_2)
            house.add_room(room_3)
            house.add_room(room_4)
            
            house.area
            expect(house.area).to eq(1900)
        end
        xit "can give details with hash" do
            house = House.new("$400000", "123 sugar lane")
            
            house.details
            
        end
    end
end