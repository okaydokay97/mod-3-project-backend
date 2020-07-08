class CreateRejects < ActiveRecord::Migration[6.0]
  def change
    create_table :rejects do |t|
      t.references :user_one
      t.references :user_two

      t.timestamps
    end
  end
end
