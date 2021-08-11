
Line = Struct.new(:time, :type, :msg)
LOG_FORMAT = /(\d{2}:\d{2}) (\w+) (.*)/

def parse_line(line)
  line.match(LOG_FORMAT) { |m| Line.new(*m.captures) }
end

parse_line("12:41 INFO User has logged in.")
# This produces objects like this:
# <struct Line time="12:41", type="INFO", msg="User has logged in.">
