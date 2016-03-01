class Item < ActiveRecord::Base
  mount_uploader :image, ItemImageUploader
  belongs_to :category
  belongs_to :orderitems
end
