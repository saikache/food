class Item < ApplicationRecord
  belongs_to :main_item

  validates :name, presence: true, uniqueness: { scope: :main_item_id}
  validates :price, presence: true

 #  has_attached_file :photo, :styles => { :original => "922x922>", :thumb => "220x220>" }
	# validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }


end
