class Control
  def self.processInput(player, player1)
    if Gosu::button_down? Gosu::KbEscape
      exit
    end

    if Gosu::button_down? Gosu::KbA
      player.walk(-2)
    end

    if Gosu::button_down? Gosu::KbD
      player.walk(2)
    end

    if Gosu::button_down? Gosu::KbE
      if Gosu::button_down? Gosu::KbS
        player.attack(2)
      else
        player.attack(1)
      end
    end

    if Gosu::button_down? Gosu::KbJ
      player1.walk(-2)
    end

    if Gosu::button_down? Gosu::KbL
      player1.walk(2)
    end

    if Gosu::button_down? Gosu::KbO
      if Gosu::button_down? Gosu::KbK
        player1.attack(2)
      else
        player1.attack(1)
      end
    end
  end
end
