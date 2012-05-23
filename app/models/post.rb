class Post < ActiveRecord::Base
  attr_accessible :body, :publish, :title
  
  has_many :assets
  accepts_nested_attributes_for :assets, :allow_destroy => true
  
end
