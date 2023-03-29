require 'rspec'
require './lib/player'

class Team
  attr_reader :roster, :player_count
  def initialize(city, team_name)
    @city = city
    @team_name = team_name
    @roster = []
    @player_count = 0
  end

  def add_player(player)
    @roster << player
    @player_count += 1
  end

  def long_term_players
    @roster.select {|player| player.contract_length > 24}
  end
  
  def short_term_players
    @roster.select {|player| player.contract_length <= 24}
  end

  # couldn't get method to work vv
  def total_value
    # require 'pry'; binding.pry
    total = @roster.select do |player| 
      player.total_cost
    end
  end

  # Couldn't get method to work in time
  def players_by_last_name
    @roster.select do |player|
      player.last_name.sort
    end
  end
end