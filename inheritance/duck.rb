require_relative "aquatic"

class Duck < Aquatic
    def speak
        puts "duck quacks"
    end
    
    def sleep
        puts "duck sleeps"
    end
    
    def eat
        puts "duck eats"
    end
end
