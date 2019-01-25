class Product < ApplicationRecord
  has_many :reviews
  belongs_to :user, optional: true
  has_one_attached :avatar
end
