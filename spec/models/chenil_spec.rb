# == Schema Information
#
# Table name: chenils
#
#  id         :integer         not null, primary key
#  zona_id    :integer
#  ocupado    :integer
#  capacidad  :integer
#  caplibre   :integer
#  notas      :text
#  estado     :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  numero     :integer
#

require 'spec_helper'

describe Chenil do
  pending "add some examples to (or delete) #{__FILE__}"
end
