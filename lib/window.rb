class Window < Gosu::Window

  def initialize
    super 640, 480, false
    self.caption = 'I did nazi that comming'
    @back_image = Gosu::Image.new('media/Dojo.png', :tileable => true)
    @player1 = Player.new(0, self)
    @player2 = Player.new(400, self)
  end

  def x
    self.width
  end

  def y
    self.height
  end

  def draw
    @back_image.draw(0, 0, 0)
    @player1.draw
    @player2.draw
  end

  def update
    @player1.update
    @player2.update
    Control.processInput(@player1, @player2)
  end
end
