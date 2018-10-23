class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :icon_url
      t.string :stamp_url
      t.string :description
      t.timestamps
    end
  end
end
