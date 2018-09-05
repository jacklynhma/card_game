class Team < ActiveRecord::Base
  belongs_to :board 
  has_many :cards  

  validates :name, presence: true
  validates :color, presence: true
end 