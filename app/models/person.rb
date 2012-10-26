class Person < ActiveRecord::Base
  attr_accessible :name1, :name2 
  
  has_many :addresses
end