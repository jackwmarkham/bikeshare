class Bike < ActiveRecord::Base
  belongs_to :profile
  mount_uploaders :pictures, PicturesUploader
end
