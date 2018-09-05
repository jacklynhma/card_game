class Board < ActiveRecord::Base
  has_many :layouts 
  has_many :cards
end