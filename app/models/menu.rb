class Menu < ActiveRecord::Base

attr_accessible :titulo, :content, :Picture, :Picture_file_name, :Picture_content_type, :Picture_file_size, :Picture_updated_at

	has_many :submenu

   has_attached_file :Picture,
       :styles => {
       :thumb=> "80x80#",
       :small  => "300x300>" }

end
