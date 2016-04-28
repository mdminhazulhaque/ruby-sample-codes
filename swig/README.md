Libraries written in C/C++ or other languages could be loaded from Ruby.

SWIG is a compiler that makes it easy to integrate C and C++ code with other languages including Perl, PHP, Tcl, Ruby, Python, Java, Guile, Mzscheme, Chicken, OCaml, Pike, and C#.

First, install `swig` using apt.

    sudo apt-get -y instal swig
    
Check the attached files. `mylib` directory contains a simple library with two methods `foo` and `add` inside. `mylib.i` is the interface file for Ruby which defines the Ruby module name and list of methods from C/C++ library.

To build the library, run `swig` to generate a wrapper for the library.

    cd mylib
    swig -ruby -c++ mylib.i
    ruby gen_makefile.rb
    
Then a `Makefile` will be generated in the present directory. Run `make` to build `mylib.so` which is a shared library, and can be used from Ruby scripts.

Now get back to the previous directory, and run the test Ruby script.

    cd ..
    ruby test_mylib.rb
    
This should show the following output.

    Hello World!
    42

To clear junks, or update library, go to `mylib` and run `make clean`.
