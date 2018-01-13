class Play < ActiveRecord::Base
  has_many :bookmarks, :dependent => :destroy
  has_many :users, through: :clips
  belongs_to :category
  has_many :reviews



  validates :title, presence: true
  validates :description, presence: true
  validates :director, presence: true
  validates :image, presence: true
  validates :category_id, presence: true


  has_attached_file :play_img, :styles => { :play_index => "250x350>", :play_show => "325x475>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :play_img, :content_type => /\Aimage\/.*\Z/
  mount_uploader :image, PictureUploader
end
