class Song < ActiveRecord::Base
  has_many :users
  
  validates :title, :artist, length: {minimum: 2}, presence: true
end
