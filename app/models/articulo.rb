class Articulo < ActiveRecord::Base

attr_accessible :title, :content, :Picture, :animales, :Picture_file_name, :Picture_content_type, :Picture_file_size, :Picture_updated_at
has_attached_file :Picture,
     :styles => {
       :thumb=> "80x80#",
       :small  => "300x300>" }

end
