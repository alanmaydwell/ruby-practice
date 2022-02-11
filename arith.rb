class Arith

    def show(value)
        puts value
    end

    def add(a, b)
        # last line in method is automatically returned (presumably if it's some sort of expression)
        # Note return keyword and also be used (a) to make things explicit (b) to return something earlier than last line
        a + b
    end

    def subtract(a, b)
        # Below also returned automatically
        y = a - b 
    end

    def both(a, b)
        # Can call other methods from same class simply by name
        x = add(a, b)
        y = subtract(a, b)
        # Can return two values like this - note fails without [ and ] 
        # Alternatively if using return statement then the [] can be omitted - return x, y
        [x, y]
    end 

    def show_both(a, b)
        results = both(a, b)
        show(results)
    end
    

end

if __FILE__ == $0
    go = Arith.new
    x = go.add(1, 2)
    puts(x)
    y = go.subtract(5, 1)
    puts(y)
    z = go.both(10, 1)
    print("both ", z, "\n")

    go.show_both(20, 2)

    puts "\nloopy"
    # For loop
    for i in 1..10 do
        go.show_both(20, i)
      end

end
