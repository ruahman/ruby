
require 'benchmark/ips'

str = "test"
Benchmark.ips do |x|
  x.report("=~") { str =~ /test/ }
  x.report(".match") { str.match /test/ }
  x.compare!
end
