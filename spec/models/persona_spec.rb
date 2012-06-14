# == Schema Information
#
# Table name: personas
#
#  id                 :integer         not null, primary key
#  nombre             :string(255)
#  email              :string(255)
#  created_at         :datetime        not null
#  updated_at         :datetime        not null
#  encrypted_password :string(255)
#  salt               :string(255)
#  perfil_id          :integer
#

require 'spec_helper'

describe Persona do
  pending "add some examples to (or delete) #{__FILE__}"
end
