class Animation

  def self.setImage(char, player)
    @char = char
    player.change(Gosu::Image.new("Media/#{char}/#{char}_standing.png"))
  end

  def self.moving(player)
    player.change(Gosu::Image.new("Media/#{@char}/#{@char}_attack1.png"))
  end

end