class Pitch < ApplicationRecord

  belongs_to :user
  has_many :locations
  has_many :characters
  has_many :musics
  
end
