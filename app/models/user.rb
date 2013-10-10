class User < ActiveRecord::Base
  has_many :addresses
  validates_presence_of :full_name
end
