class Game
  attr_reader :players, :turn, :defender

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
    @defender = player_2
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def attack(player)
    player.receive_damage
    switch_turn
  end

  def switch_turn
    @turn, @defender = @defender, @turn # changes the order of the elements in an array
  end
end
