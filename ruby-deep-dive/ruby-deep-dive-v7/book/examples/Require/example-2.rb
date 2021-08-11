
def require_relative(path)
  # Get full path of current file
  current_path = File.realdirpath(__dir__)

  # Combine path with our file name
  full_path = File.expand_path(path, current_path)

  # Call normal require
  require(full_path)
end
