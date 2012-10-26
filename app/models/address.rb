class Address < ActiveRecord::Base
  validates :person_id, :street_name, presence: true
  
  belongs_to :person
  
  attr_accessible :street_name, :street_name_secondary, :city, :state_abbr, :zip, :zip_ext
end