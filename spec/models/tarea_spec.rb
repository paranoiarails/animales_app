# == Schema Information
#
# Table name: tareas
#
#  id           :integer         not null, primary key
#  nombre       :string(255)
#  persona_id   :integer
#  zona_id      :integer
#  animal_id    :integer
#  texto        :text
#  ocupacion_id :integer
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#  fecha        :date
#

require 'spec_helper'

describe Tarea do
  pending "add some examples to (or delete) #{__FILE__}"
end
