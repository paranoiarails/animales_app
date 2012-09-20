class Especie < ActiveRecord::Base
  attr_accessible :nombre

  has_many :animals

validates :nombre, :presence => true, :uniqueness => { :case_sensitive => true }
end
