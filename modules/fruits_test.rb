require './fruits'

# direct method call
Fruits::saySomething
Fruits::Red::foo
Fruits::Green::bar

# classes from modules
ap = Fruits::Red::Apple.new
ch = Fruits::Red::Cherry.new
st = Fruits::Red::Strawberry.new

ap.sayName
ch.sayName
st.sayName

av = Fruits::Green::Avocados.new
lm = Fruits::Green::Limes.new

av.sayName
lm.sayName
