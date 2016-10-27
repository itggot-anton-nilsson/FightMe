class Movement

  def self.button_down(id, player, player1)
    if id == Gosu::KbEscape
      exit
    elsif id == Gosu::KbA
      player.walk(-5)
    elsif id == Gosu::KbD
      player.walk(5)
    elsif id == Gosu::KbLeft
      player1.walk(-5)
    elsif id == Gosu::KbRight
      player1.walk(5)
    end
  end

end