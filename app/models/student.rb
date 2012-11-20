class Student < ActiveRecord::Base
  attr_accessible :first_name, :last_name
  validates :first_name, :length => { :minimum => 2 }
  validates :last_name, :length => { :minimum => 2 }
  has_many :addresses
end
