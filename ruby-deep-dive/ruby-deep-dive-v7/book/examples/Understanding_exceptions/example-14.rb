
def log_message(msg, destination)
  destination.write(msg + "\n")
end

log_message("hello there")
