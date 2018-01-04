class Tweet < ApplicationRecord
  belongs_to :zombie
  validates :status, presence: true
end
