# If no params you don''t actually need brackets after hello

# Ruby has puts and print - difference is puts adds a new line and print doesn't

def helloyou
    puts("Hello you")
end

def hello(name)
    puts("Hello #{name}!")
end

def loud_hello(name)
    shouted = name.capitalize
    puts("Hello #{shouted}!")
end

def hello_with_default(name="Tim")
    puts("Hello #{name}!")
end


helloyou
hello("Bod")
loud_hello("arg")
hello_with_default
hello_with_default()
hello_with_default("Not Tim")
