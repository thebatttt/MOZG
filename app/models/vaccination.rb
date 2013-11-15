class Vaccination < ActiveRecord::Base
  attr_accessible :check, :cost, :date_vacc, :notes
  belongs_to :animal
end
