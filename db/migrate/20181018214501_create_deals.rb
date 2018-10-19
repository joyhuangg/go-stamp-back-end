class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.string :category
      t.text :description
      t.integer :max_points
      t.references :store, foreign_key: true
      t.timestamps
    end
  end
end
