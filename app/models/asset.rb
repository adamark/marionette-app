class Asset < ActiveRecord::Base
  attr_accessible :caption, :image_uid, :main, :post_id, :project_id
  
  image_accessor :image
  belongs_to :post
  belongs_to :project
  
  def self.all_dragonfly
    @assets = Asset.all
    images = []
    
    @assets.each do |image|
      images << { :image => "#{image.image.url}", :thumb => "#{image.image.thumb('80x80').url}" }
    end
    images
    
  end
end
