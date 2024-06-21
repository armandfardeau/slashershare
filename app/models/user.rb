class User < ApplicationRecord
  after_initialize :set_defaults
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :offers, dependent: :destroy
  acts_as_taggable

  has_attached_file :avatar,
                    styles: {medium: '300x300>', thumb: '100x100>'},
                    default_url: '/assets/default_profil_picture.svg'
  validates_attachment_content_type :avatar, content_type: %w[image/jpg image/jpeg image/png]

  def set_defaults
    self.enterprise = false if enterprise.nil?
  end
end
