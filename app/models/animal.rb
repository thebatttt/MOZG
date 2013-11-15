class Animal < ActiveRecord::Base
  attr_accessible :date_incoming, :label, :nickname, :signs, :notes
  validates :nickname, length: {maximum: 100, minimum: 3}
  validates :label, length: {maximum:15, minimum:1}
  has_many :vaccinations, dependent: :destroy
end
