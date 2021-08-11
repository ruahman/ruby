
class Colors
  def self.define_constant_colors
    colors = {
      blue: '#1c0078',
      red:  '#d72525',
      green: '#15bf00'
    }

    colors.each { |color, code| const_set(color.upcase, code) }
  end
end

Colors.define_constant_colors
puts Colors::GREEN
