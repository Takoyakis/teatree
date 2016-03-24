class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :postings
  has_many :reviews
  has_attached_file :avatar,
                    styles: {medium:"500x500#", thumb:"300x300#"}
  validates_attachment_content_type :avatar,
                                    content_type: ["image/jpg", "image/jpeg", "image/png"]
  validates :name, presence: true
end
