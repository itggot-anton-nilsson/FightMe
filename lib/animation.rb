class Animation

  def self.setup(char, player)

    @animation = {
        'attack1': [],
        'attack2': [],
        'block1': [],
        'block2': [],
        'jump': [],
        'idle': [],
        'walking': []
    }

    @animation.each do |files|
      p files
      Dir[File.dirname(__FILE__) + "/media/#{char}/#{files}*.png"].each { |file| puts file }
    end

    player.change(Gosu::Image.new("media/#{char}/0_idle.png"))

  end

  def self.moving(player)
    # player.change()
  end

end