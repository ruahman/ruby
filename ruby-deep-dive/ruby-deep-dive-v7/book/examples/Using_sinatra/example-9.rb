
after do
  ActiveRecord::Base.clear_active_connections!
end
