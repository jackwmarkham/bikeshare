class AddColumnsToBikes < ActiveRecord::Migration
  def change
    add_column :bikes, :street, :string
    add_column :bikes, :suburb, :string
    add_column :bikes, :state, :string
    add_column :bikes, :postcode, :integer
    add_column :bikes, :country, :string
  end
end
