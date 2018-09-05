class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.belongs_to :layout
      t.belongs_to :board
      t.string :color
      t.string :row
      t.string :column 
      t.string :word
    end
  end
end
