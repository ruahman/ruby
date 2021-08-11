
# Note that this will also match some invalid IP address
# like 999.999.999.999, but in this case we just care about the format.

def ip_address?(str)
  # We use !! to convert the return value to a boolean
  !!(str =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/)
end

ip_address?("192.168.1.1")  # returns true
ip_address?("0000.0000")    # returns false
