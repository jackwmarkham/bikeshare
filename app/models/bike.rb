class Bike < ActiveRecord::Base
  belongs_to :profile
  mount_uploaders :pictures, PicturesUploader
  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def full_street_address
    [street, suburb, state, postcode, country].compact.join(', ')
  end
  def self.search(search)
  where("name LIKE ?", "%#{search}%")
  where("content LIKE ?", "%#{search}%")
  end
end
