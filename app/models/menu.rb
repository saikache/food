class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :main_items
  validates :name, presence: true, uniqueness: { scope: :restaurant_id}

  has_attached_file :photo, :styles => { :original => "922x922>", :thumb => "220x220>" }
	validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }




  def rest
  	restaurant
  end

end
