class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :color, null: false
      t.string :name, null: false
      t.belongs_to :board
    end
  end
end
