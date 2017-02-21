module Functions
  class Display
    def self.clear_display
      puts "\e[H\e[2J"
    end
  end
end
