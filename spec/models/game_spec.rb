# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  num_rounds  :integer
#  game_points :integer
#

require 'spec_helper'

describe Game do
  describe '.create' do
    it 'has an id' do
      game = Game.create
      expect(game.id).to_not be nil
    end
  end
end