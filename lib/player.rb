class Player
  def initialize(x, window)
    Animation.setup('nazi', self)
    @window = window
    @x = x
    @y = 150
    @moving = false
  end

  def idle
    Animation.idle(self)
  end

  def walk(number)
    @moving = true
    @x += number
    Animation.moving(self)
  end

  def change(image)
    @guy = image
  end

  def update
    if @moving == false
      idle
    end
    @moving = false
  end

  def draw
    @guy.draw(@x, @y, 0, 0.1, 0.1)
  end

end
