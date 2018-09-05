class Card < ActiveRecord::Base
  belongs_to :layout
  belongs_to :board

  validates :color, presence: true 
  validates :row, presence: true 
  validates :column, presence: true 
  validates :word, presence: true
end