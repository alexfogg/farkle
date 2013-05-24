# == Schema Information
#
# Table name: scores
#
#  id          :integer          not null, primary key
#  final_score :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Score < ActiveRecord::Base
  attr_accessible :final_score
  has_and_belongs_to_many :users

  def add_final_score #takes score from game and adds to final score table
  end

end
