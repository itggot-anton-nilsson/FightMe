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

end
