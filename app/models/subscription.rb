class Subscription < ActiveRecord::Base
  belongs_to :meuble
  validates_presence_of :meuble_id
  validates_presence_of :email
  attr_accessible :email, :meuble_id

end
