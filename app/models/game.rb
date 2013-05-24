# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  num_rounds  :integer
#  game_points :integer
#

class Game < ActiveRecord::Base
  attr_accessible :num_rounds
  has_and_belongs_to_many :users
  has_many :rounds

  def calculate_game_score #adds round scores together
  end

end
