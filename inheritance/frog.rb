require_relative "aquatic"

class Frog < Aquatic
    def speak
        puts "frog croaks"
    end
    
    def sleep
        puts "frog does not sleep"
    end
    
    def eat
        puts "frog eats flies"
    end
end
