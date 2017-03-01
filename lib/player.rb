class Player
    @moving = false
  def initialize(x, window)
    Animation.setup('nazi', self)
    @attack1 = Attack.new(15, 10, 1, self)
    @attack2 = Attack.new(10, 15, 2, self)
    @window = window
    @x = x
    @y = 150
  end

  def idle
    Animation.idle(self)
  end

  def walk(number)
    @moving = true
    @x += number
    Animation.moving(self)
  end

  def attack(whatAttack)
    if whatAttack == 1
      @attack1.performeAttack
    else
      @attack2.performeAttack
    end
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
