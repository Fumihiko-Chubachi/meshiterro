class PostImage < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  
  def get_image
    unless image.attached?
      image
    else
      'no_image.jpg'
    end
  end
  
end
