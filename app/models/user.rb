class User < ApplicationRecord

  has_many :lists, dependent: :destroy
  has_many :items, through: :lists

  validates_presence_of :password, on: :create
  validates_presence_of :name, on: :create
end
