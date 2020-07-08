class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.references :user_one
      t.references :user_two

      t.timestamps
    end
  end
end
