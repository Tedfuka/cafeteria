class Product < ApplicationRecord
  has_many :reviews
  belongs_to :user  #, through: :reviews #管理者だけに紐つく
  has_one_attached :avatar
end
