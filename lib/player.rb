class Player
  attr_reader :name, :points
  DEFAULT_HP = 100

  def initialize(name, points = DEFAULT_HP)
    @name = name
    @points = points
  end

  def receive_damage
    @points -= 10
  end
end
