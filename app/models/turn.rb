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

    #six of a kind
    elsif duplicates(@numbers).max==6 #checks to see if the max number of duplicates in the array is equal to 6
      @points = 3000

    # five of a kind
    elsif duplicates(@numbers).max==5 #checks to see if the max number of duplicates in the array is equal to 5
      @points = 1500

    # four of a kind`
    elsif duplicates(@numbers).max==4 && duplicates(@numbers).count(2)!=1 #checks to see if the max number of duplicates in the array is equal to 4; no pair
      @points = 1000

    elsif duplicates(@numbers).max==4 && duplicates(@numbers).count(2)==1 #checks to see if the max number of duplicates in the array is equal to 4; with pair
      @points = 1300

    elsif duplicates(@numbers).count(3)==2 #checks for two triples in the array
      @points = 2000

    elsif duplicates(@numbers).count(

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

  def duplicates(dice) #checks to see if there are matching dice in the array
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
