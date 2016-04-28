# build the gem

    gem build apple.gemspec

    user:~/apple$ gem build apple.gemspec 
    Successfully built RubyGem
    Name: apple
    Version: 1.0.0
    File: apple-1.0.0.gem

# use the gem

    user:~/apple$ irb
    2.2.1 :001 > require 'apple'
    => true 
    2.2.1 :002 > Apple.sayName
    Hello from Apple!
    => nil 
    2.2.1 :003 > Apple.sayColor
    I am Red!
    => nil 
    2.2.1 :004 > quit

# remove the gem

    gem uninstall apple
    
    user:~/apple$ gem uninstall apple
    Successfully uninstalled apple-1.0.0
