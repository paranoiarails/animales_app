# == Schema Information
#
# Table name: animals
#
#  id                :integer         not null, primary key
#  nombre            :string(255)
#  raza              :string(255)
#  sexo              :string(255)
#  fecha_entrada     :date
#  observaciones     :text
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#  foto_file_name    :string(255)
#  foto_content_type :string(255)
#  foto_file_size    :integer
#  foto_updated_at   :datetime
#  chenil_id         :integer
#

require 'spec_helper'

describe Animal do
  pending "add some examples to (or delete) #{__FILE__}"
end
