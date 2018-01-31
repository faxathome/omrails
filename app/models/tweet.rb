class Tweet < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :content, presence: true, length: {maximum: 140}

  has_attached_file :image, :styles =>
    { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "http://www.invertersale.com/media/product_medium/165_image-not-found.gif"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
