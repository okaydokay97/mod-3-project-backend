class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :bio
      t.string :gender
      t.integer :age
      t.string :img_url

      t.timestamps
    end
  end
end
