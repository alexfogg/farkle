# == Schema Information
#
# Table name: rolls
#
#  id         :integer          not null, primary key
#  points     :integer
#  dice       :integer
#  name       :string(255)
#  turn_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Roll < ActiveRecord::Base
  attr_accessible :points, :dice, :holds
  has_many :dice
  belongs_to :turn

  # def initialize
  #   @points = 0
  #   @dice = []
  #   @holds = [false,false,false,false,false,false]

  #   6.times do
  #     @dice = Die.new
  #   end
  # end
end
