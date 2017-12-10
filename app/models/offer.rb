class Offer < ApplicationRecord
  belongs_to :user
  acts_as_taggable
  validates :user_id, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :place, presence: true

  def self.search(term)
    result = where('title LIKE ?', "%#{term}%").or where('description LIKE ?', "%#{term}%")
    result.order('id DESC')
    return result unless result.nil? && result.empty?
    order('id DESC')
  end
end
