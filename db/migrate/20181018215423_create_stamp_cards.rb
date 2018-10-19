class CreateStampCards < ActiveRecord::Migration[5.2]
  def change
    create_table :stamp_cards do |t|
      t.integer :current_points
      t.references :customer, foreign_key: true
      t.references :deal, foreign_key: true
      t.timestamps
    end
  end
end
