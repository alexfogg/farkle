# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :scores
  has_and_belongs_to_many :games

  def start_turn #starts the users turn
  end

  def switch_turn #switches to another user's turn within the same game instance
  end

end
