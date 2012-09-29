class Contact < ActiveRecord::Base
  attr_accessible :name, :phone
  validates :phone, :length => {:minimum=>7}
end
