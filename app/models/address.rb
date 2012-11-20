class Address < ActiveRecord::Base
  attr_accessible :city, :line1, :line2, :state, :address_type, :zip_code
  belongs_to :student
end
