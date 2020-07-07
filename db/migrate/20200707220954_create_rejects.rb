class CreateRejects < ActiveRecord::Migration[6.0]
  def change
    create_table :rejects do |t|
      t.refrences :user_id
      t.refrences :user_id

      t.timestamps
    end
  end
end
