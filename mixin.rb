
module Foo
   
    # not def self.iseven
    def iseven?
        @number % 2 == 0
    end
    
    def isodd?
        !self.iseven?
    end
    
end

class Number
    
    def initialize(arg = 0)
        @number = arg
    end
    
    def print
        puts @number
    end    
end

n = Number.new(42)
n.print

# this will throw an error
# if n.iseven?
#     puts "Even"
# else
#     puts "Odd"
# end

# do some mixin
class Number
    include Foo
end

# now check if mixin-ed methods are accessible
if n.iseven?
    puts "Even"
else
    puts "Odd"
end
