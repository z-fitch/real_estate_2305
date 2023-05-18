class Room
  attr_reader :category, 
              :length, 
              :width,
              :is_painted

  def initialize(category, length, width, is_painted = false)
    @category = category
    @length = length
    @width = width
    @is_painted = is_painted
  end

#When I try to make it "is_painted?" The code breaks, the "?" freaks it out. 

def area
room_width = @width.to_i
room_area = @length * room_width
end

def paint
@is_painted = true
end


end
