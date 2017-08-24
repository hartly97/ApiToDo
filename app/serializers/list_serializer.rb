class ListSerializer < ActiveModel::Serializer

   attributes :id, :user_id, :permissions, :name
 end
