class Offer < ApplicationRecord
  belongs_to :user
  acts_as_taggable
  validates :user_id, :presence => true
end
