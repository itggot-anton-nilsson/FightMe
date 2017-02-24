class Player
  def initialize(x, window)
    Animation.setup('nazi', self)
    @window = window
    @x = x
    @y = 150
    @i = 1
  end

  def change(image)
    @guy = image
  end

  def draw
    @guy.draw(@x, @y, 0, 0.1, 0.1)
  end

  def update

  end

  def walk(number)
    Animation.moving(self)
    @x += number
  end

end
