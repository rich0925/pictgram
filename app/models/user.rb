class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  
  has_secure_password
  
  has_many :favorite_topics, through: :favorites, source: 'topic'
  has_many :favorites
end
