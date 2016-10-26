class Window < Gosu::Window

  def initialize
    super 640, 480, false
    self.caption = 'A great motherfucking game'
    @back_image = Gosu::Image.new('Media/Dojo.png', :tileable => true)
    @player1 = Player.new
  end

  def draw
    @back_image.draw(0, 0, 0)
    @player1.draw
  end

  def update

  end
end