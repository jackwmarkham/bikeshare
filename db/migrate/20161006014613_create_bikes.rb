class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.references :profile, index: true, foreign_key: true
      t.text :description
      t.integer :gears

      t.timestamps null: false
    end
  end
end
