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

    @animation.keys.each do |files|
      Dir.glob("media/#{char}/*#{files}.png") {|file| @animation[files] << Gosu::Image.new(file)}
    end

    player.change(@animation[:idle][0])

  end

  def self.moving(player)
    player.change(@animation[:walking][0])
  end

  def self.attack(player, version)
    if version == 1
      player.change(@animation[:attack1][0])
    else
      player.change(@animation[:attack2][0])
    end
  end

  def self.idle(player)
    player.change(@animation[:idle][0])
  end
end
