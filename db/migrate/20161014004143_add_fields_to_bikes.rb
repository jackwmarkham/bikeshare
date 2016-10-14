class AddFieldsToBikes < ActiveRecord::Migration
  def change
    add_column :bikes, :location, :string
    add_column :bikes, :title, :string
    add_column :bikes, :price_hr, :float
    add_column :bikes, :price_day, :float
    add_column :bikes, :price_week, :float
    add_column :bikes, :delivery, :boolean
    add_column :bikes, :listed, :boolean
  end
end
