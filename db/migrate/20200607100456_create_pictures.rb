class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :files
      t.integer :user_id
      t.integer :likes

      t.timestamps
    end
  end
end
