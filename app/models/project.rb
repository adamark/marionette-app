class Project < ActiveRecord::Base
  attr_accessible :body, :gallery, :kind, :publish, :title
  
  has_many :assets
  accepts_nested_attributes_for :assets, :allow_destroy => true
  
end
