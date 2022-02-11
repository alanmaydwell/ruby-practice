class MultiGreets
    # Make instance variable accessible outside the class
    attr_accessor :names

    def initialize(names="Human")
        @names = names
    end

    def greet
        # nil value
        if @names.nil?
            puts "Hello, hello anybody there?"
        # Some way of detecting an iterable (also note only one e in elsif)
        elsif @names.respond_to?("each")
            # Iterating - will I remember this!
            @names.each do |name|
                puts("Hello #{name}!")
            end #loop
        else
            # Should already be single-vaue here
            puts "Hello #{@names}!"
        end #if

    end # method

    def bye
        if @names.nil?
            puts "Goodbye, I think"
        # In contrast to greet, when multi items join them rather than iterate
        elsif @names.respond_to?("join")
            # Join the list elements with commas
            puts "Goodbye to you all: #{@names.join(", ")}"
        else
            puts "Goodbye #{@names}!"

        end
        # Have extra line after "bye"
        puts("")
    end
end # class



# Presumably similar to Python's if __name__ == "__main__"
if __FILE__ == $0
    mg = MultiGreets.new
    mg.greet
    mg.bye

    mg.names = "Bod"
    mg.greet
    mg.bye

    mg.names = ["Cuthbert", "Dibble", "Grub"]
    mg.greet
    mg.bye

    mg.names = ""
    mg.greet
    mg.bye

    mg.names = nil
    mg.greet
    mg.bye

    # Below OK - looks like #{}! copes with this
    mg.names = 0
    mg.greet
    mg.bye

end
            
