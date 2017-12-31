# == Schema Information
#
# Table name: zombies
#
#  id         :integer          not null, primary key
#  name       :string
#  graveyard  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Zombie < ApplicationRecord
end
