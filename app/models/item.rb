class Item < ApplicationRecord

  belongs_to :list

  validates_presence_of :item, on: :create
end
