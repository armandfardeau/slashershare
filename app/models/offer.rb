class Offer < ApplicationRecord
  belongs_to :user
  acts_as_taggable
  validates :user_id, :presence => true
  validates :title, :presence => true
  validates :description, :presence => true
  validates :place, :presence => true
end
