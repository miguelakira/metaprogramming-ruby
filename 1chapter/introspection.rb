class Greeting
    def initialize(text)
        @text = text
    end

    def welcome
        @text
    end
end

puts my_object = Greeting.new("Hello")
puts my_object.class
puts my_object.class.instance_methods()
puts my_object.instance_variables
