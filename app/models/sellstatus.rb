class Sellstatus < ActiveHash::Base
  self.data = [
    {id: 1, name: '出品中'}, {id: 2, name: '売却済み'}
  ]
  include ActiveHash::Associations
  has_many :items
end