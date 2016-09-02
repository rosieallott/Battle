require_relative 'player'

class Game

attr_reader :current_player, :opponent

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
    @opponent = player_2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack
    opponent.receive_damage
    switch_turn
  end

  def switch_turn
    @current_player = @players.select{|player| player != @current_player}.pop
    @opponent = @players.select{|player| player != @opponent}.pop
  end
end
