# == Schema Information
#
# Table name: dice
#
#  id         :integer          not null, primary key
#  value      :integer
#  roll_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Die < ActiveRecord::Base
  attr_accessible :value
  after_initialize :rando
  belongs_to :roll

  def rando
    self.value=rand(1..6)
  end
end
