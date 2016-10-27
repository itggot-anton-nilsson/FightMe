class Player
  def initialize(x)
    @x = x
    @y = 350
    @guy = Gosu::Image.new('Media/Guy.png')
  end

  def draw
    @guy.draw(@x, @y, 0)
  end

  def update

  end

  def walk(number)
    @x += number
  end

end