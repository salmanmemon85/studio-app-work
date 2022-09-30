class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :titile
      t.text :description
      t.integer :views , default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
