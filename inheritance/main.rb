require_relative "frog"
require_relative "duck"

frog = Frog.new
frog.speak
frog.sleep
frog.eat

duck = Duck.new
duck.speak
duck.sleep
duck.eat

# check inheritance
frog.where
duck.where

# check inheritance
class Dummy < Aquatic
end

# methods from base class are not overridden
dummy = Dummy.new
dummy.speak
dummy.sleep
dummy.eat
