class Hitpoints
  attr_reader :player_1_HP :player_2_HP

  def initialize
    @player_1 = 0
  end

  def player_1_HP
    'player 1 HP'
  end

  def player_2_HP
    'player 2 HP'
  end

  def self.instance
    @player_1_HP ||= Hitpoints.new
    @player_2_HP ||= Hitpoints.new
  end
end