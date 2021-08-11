
def self.each_name
  return to_enum(:each_name) unless block_given?
  all.each { |user| yield user.name }
end
