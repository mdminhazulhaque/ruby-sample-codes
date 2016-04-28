#!/usr/bin/ruby

Thread.abort_on_exception = true

require 'gtk3'

class App
    def initialize
        Gtk.init
        @builder = Gtk::Builder::new
        @builder.add_from_file("window.glade")
        
        window = @builder.get_object("window")
        window.signal_connect("destroy") { Gtk.main_quit }
        window.show()
        
        @builder.get_object("button_calculate").signal_connect("clicked") { on_button_calculate }
        @builder.get_object("button_start").signal_connect("clicked") { Thread.new do on_button_start end }
        
        @entry_number = @builder.get_object("number")
        @entry_factorial = @builder.get_object("factorial")
        @entry_start = @builder.get_object("start")
        @entry_end = @builder.get_object("end")
        @progressbar = @builder.get_object("progressbar")
        
        @entry_number.set_text("5")
        @entry_start.set_text("1")
        @entry_end.set_text("100")
        
        Gtk.main()
    end
    
    def factorial(number)
        (1..number).inject(:*) || 1
    end
    
    def on_button_calculate
        f = factorial(@entry_number.text.to_i)
        @entry_factorial.set_text(f.to_s)
    end
    
    def on_button_start
        start = @entry_start.text.to_f
        stop = @entry_end.text.to_f
        step = (stop - start) / 10000
        start = 0
        
        while start <= 1.00 do
            @progressbar.fraction = start
            start += step
            sleep 0.1
        end
    end    
end

app = App.new
