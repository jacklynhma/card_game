class Layout < ActiveRecord::Base
  has_manys :cards 
  belongs_to :board
end