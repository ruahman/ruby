require 'rubygems'
require 'bundler/setup'
require 'benchmark/ips'

def expensive_method 
    5000.times { |n| n * n }
end

def measure_time
    before = Time.now
    yield
    puts Time.now - before
end

measure_time { expensive_method }


str = "test"
Benchmark.ips do |x|
    x.report("=~") { str =~ /test/ }
    x.report(".match") { str.match /test/ }

    x.compare!
end