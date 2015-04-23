class Bar < ActiveRecord::Base
  belongs_to :user
  has_many :offers
  has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "25x25>" }, :default_url => "https://s3-us-west-1.amazonaws.com/happyhour-rushi/Bar.jpg"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]


validates :bar_name, presence: true
validates :location, presence: true
validates :zip, presence: true
validates :day, presence: true
validates :time, presence: true

end
