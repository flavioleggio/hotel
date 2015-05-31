class Reservation < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: :true
  validates :surname, presence: :true
  validates :hosts, presence: :true
end
