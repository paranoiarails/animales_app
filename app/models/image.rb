class Image < ActiveRecord::Base
	
	belongs_to :animal
	has_attached_file :image, :styles => {:medium => "250x250>", :thumb => "100x100>" }
end
