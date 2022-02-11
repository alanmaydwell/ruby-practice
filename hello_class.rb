class Greets
    # Special method name
    def initialize(name="Tim")
        # @ sign prefix fof instance variable
        @name = name
    end
    
    def arrive
        puts "Hello #{@name}!"
    end
   
    def depart
        puts "Goodbye #{@name}!"
    end

end


person1 = Greets.new("Not Tim")
person1.arrive
person1.depart

person2 = Greets.new("A.N. Other")
person2.arrive
person2.depart

# Not allowed!
# Need to use attr_accessor to make this attribute accessible 
puts(person1.@name)

