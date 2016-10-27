class Window < Gosu::Window

  def initialize
    super 640, 480, false
    self.caption = 'A great motherfucking game'
    @back_image = Gosu::Image.new('Media/Dojo.png', :tileable => true)
    @player1 = Player.new(40)
    @player2 = Player.new(600)
  end

  def draw
    @back_image.draw(0, 0, 0)
    @player1.draw
    @player2.draw
  end

  def update

  end

  def button_down(id)
     Movement.button_down(id, @player1, @player2)
  end
end