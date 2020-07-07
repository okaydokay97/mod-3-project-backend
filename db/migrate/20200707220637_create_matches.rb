class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.references :user_id
      t.references :user_id

      t.timestamps
    end
  end
end
