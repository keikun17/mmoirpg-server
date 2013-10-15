class Character < ActiveRecord::Base

  has_many :character_battles, dependent: :destroy
end

# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  player_id  :integer
#  name       :string(255)
#  strength   :integer
#  vitality   :integer
#  created_at :datetime
#  updated_at :datetime
#

