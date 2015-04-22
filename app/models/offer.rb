class Offer < ActiveRecord::Base
  belongs_to :bar
  has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "100x100>"} , :default_url => "https://s3-us-west-1.amazonaws.com/happyhour-rushi/beer.png"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  validates :item, presence: true
  validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 0.5 }


end
