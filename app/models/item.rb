class Item < ActiveRecord::Base
  serialize :raw_info , Hash

  has_many :ownerships  , foreign_key: "item_id" , dependent: :destroy
  has_many :users , through: :ownerships

  has_many :wnats. class_name="want_users", foreign_key: "item_id", dependent: :destroy
  has_many :want_users, through: :wants, source: :user
  
  has_many :haves, class_name: "Have", foreign_key: "item_id", dependent: :destroy
  has_many :have_users , through: :haves, source: :user

end
