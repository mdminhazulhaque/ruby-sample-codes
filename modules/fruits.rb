module Fruits
    
    def self.saySomething()
        puts "Fruits are great"
    end
    
    module Red
        
        COLOR = "Red"
        
        class Apple
            def sayName()
                puts "Hello from Apple and I am #{COLOR}"
            end
        end
        
        class Cherry
            def sayName()
                puts "Hello from Cherry and I am #{COLOR}"
            end
        end
        
        class Strawberry
            def sayName()
                # use other module's members
                puts "Hello from Strawberry and I am not #{Green::COLOR}"
            end
        end
        
        def self.foo()
            puts "#{COLOR} wins"
        end
    end
    
    module Green
        
        COLOR = "Green"
        
        class Avocados
            def sayName()
                puts "Hello from Avocados and I am #{COLOR}"
            end
        end
        
        class Limes
            def sayName()
                puts "Hello from Limes and I am not #{Red::COLOR}"
            end
        end
        
        def self.bar()
            puts "#{COLOR} wins"
        end
    end
end
