class Posting < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  validates :category_id, presence: true
  validates :name, presence: true
  validates :time, numericality: true, allow_blank: true
  validates :gram, numericality: true, allow_blank: true
  validates :temperature, numericality: true, allow_blank: true

  has_attached_file :image,
                    :styles => {medium:"500x500#", thumb:"300x300#"}
  validates_attachment_content_type :image,
                                    content_type: ["image/jpg", "image/jpeg", "image/png"]
end
