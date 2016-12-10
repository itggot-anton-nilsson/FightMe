class Control

  def self.buttonPress(player, player1)
    if Gosu::button_down? Gosu::KbEscape
      exit
    end

    if Gosu::button_down? Gosu::KbLeft
      player1.walk(-2)
    end

    if Gosu::button_down? Gosu::KbRight
      player1.walk(2)
    end

    if Gosu::button_down? Gosu::KbA
      player.walk(-2)
    end

    if Gosu::button_down? Gosu::KbD
      player.walk(2)
    end

  end

end