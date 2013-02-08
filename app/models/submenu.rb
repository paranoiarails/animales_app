class Submenu < ActiveRecord::Base

attr_accessible :titulo, :contenido, :Picture, :Picture_file_name, :Picture_content_type, :Picture_file_size, :Picture_updated_at

	belongs_to :menu, :foreign_key=>'menu_id'

   has_attached_file :Picture,
       :styles => {
       :thumb=> "80x80#",
       :small  => "300x300>" }


end
