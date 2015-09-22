class Playlist < ActiveRecord::Base
  belongs_to :user
  belongs_to :song

  has_many :users
  has_many :songs
  # belongs_to :play, class_name: 'User'
end
