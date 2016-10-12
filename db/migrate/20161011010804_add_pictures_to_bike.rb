class AddPicturesToBike < ActiveRecord::Migration
  def change
    add_column :bikes, :pictures, :json
  end
end
