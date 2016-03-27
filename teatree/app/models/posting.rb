class Posting < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  validates :category_id, presence: true
  validates :name, presence: true
end
