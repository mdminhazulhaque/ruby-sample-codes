#!/usr/bin/env ruby

require "./sort"

def rand_array(n)
    array = [];
    rand = Random.new
    n.times do

    array << rand.rand(1...10000)

    end
    
    array
end

array_a = rand_array(100000)
t_start = Time.now.to_f * 1000
quicksort(array_a)
t_end = Time.now.to_f * 1000
print "Quicksort operation took #{t_end - t_start} ms\n"

array_b = rand_array(100000)
t_start = Time.now.to_f * 1000
mergesort(array_b)
t_end = Time.now.to_f * 1000
print "Mergesort operation took #{t_end - t_start} ms\n"
