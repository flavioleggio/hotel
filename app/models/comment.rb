class Comment < ActiveRecord::Base
  ratyrate_rateable 'Rate'
  belongs_to :user
  validates :title, presence: :true
  validates :description, presence: :true
end
