class Meuble < ActiveRecord::Base
  has_many :subscriptions
  attr_accessible :description, :link, :name, :price
end
