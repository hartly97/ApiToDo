class ItemSerializer < ActiveModel::Serializer
   attributes :id, :item, :completed, :list_id
 end
