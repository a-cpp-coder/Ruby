puts self

class House
    puts self
    @@count = 0 # @@ is class variable, @ is instance variable
    def self.count  # adding self for calling House.count
        # also that is a singleton method ?
        @@count
    end

    def self.report_count_of_instances  # another class method
        "There are #{count} of instances of the #{name} class"
    end

    # attr_reader :color  # shorthand syntax
    # attr_writer :color
    attr_accessor :color, :style

    def initialize(color, style)
        puts self
        @color = color
        @style = style
        @@count += 1
    end

    def details
        "This house is a #{color} #{style} house instance."
    end

    # def color   # getter/reader
    #     @color
    # end

    # def color=(new_color)   # setter/writer
    #     @color = new_color
    # end
end

puts House.report_count_of_instances
puts House.count
house = House.new("white", "igloo")
puts house.color
puts house.style
# puts House.color
# house.color = "blue"
puts house.details

puts House.count
