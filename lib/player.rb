class Player
  def initialize(x, window)
    Animation.setImage('Nazi', self)
    @window = window
    @x = x
    @y = 150

    @x_vel = 0

  end

  def change(image)
    @guy = image
  end

  def draw
    @guy.draw(@x, @y, 0, 0.1, 0.1)
  end

  def update

    @x += @x_vel

  end

  def walk(number)

    Animation.moving(self)
    @x_vel += number

  end

end