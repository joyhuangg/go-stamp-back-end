class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :bio
      t.string :avatar
      t.timestamps
    end
  end
end
