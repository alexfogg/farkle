# == Schema Information
#
# Table name: turns
#
#  id          :integer          not null, primary key
#  round_id    :integer
#  dice        :integer
#  turn_points :integer
#  num_rolls   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Turn < ActiveRecord::Base
  attr_accessible :round_id, :turn_points, :num_rolls
  has_many :dice
  belongs_to :round

  def roll_dice
    @dice = []
    for i in 1..6 do
      @dice << Die.new
    end
    #calculate_points
  end

  def calculate_points #score calculation function for each possible combo
    @numbers = calculate_numbers(@dice)

   # straight 1-2-3-4-5-6
    if @numbers.sort == [1,2,3,4,5,6]
      @points = 1500
    elsif

    # single "1" die
    elsif
    # single "5" die

    # three "1" dice

    # three "2" dice

    # three "3" dice

    # three "4" dice

    # three "5" dice

    # three "6" dice

    # three pairs of anything


    # two triplets

    # "farkle" - no point combos

    # three "farkles" in a row


  end

  def calculate_numbers(dice) #turns the dice into an array of individual values
    i = 0
    dice.count.times do |i|
      numbers[i]=@dice[i].value
      i=i+1
    end
    return numbers
  end

  def duplicates(dice) #check to see if there are matching dice
    group = []
    for i in 1..6
      group[i-1] = dice.count(i)
    end
    return group
  end

end










#   def roll_dice
#   #   self.points = []
#   #   self.dice = []
#   #   @holds = [false,false,false,false,false,false]





#   # def initialize
#   #   @points = 0
#   #   @dice = []
#   #   @holds = [false,false,false,false,false,false]

#   #   6.times do
#   #     @dice = Die.new
#   #   end
#   # end
# end
