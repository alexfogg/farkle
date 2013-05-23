# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe User do
  describe '.create' do
    it 'has an id and name' do
      user = User.create(name: 'Bob')
      expect(user.id).to_not be nil
      expect(user.name).to eq 'Bob'
    end
  end
end