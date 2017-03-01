class Attack
  def initialize(range, damage, version, player)
    @range = range
    @damage = damage
    @version = version
    @player = player
  end

  def performeAttack
    Animation.attack(@player, @version)
  end

end
