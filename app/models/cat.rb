class Cat < ActiveRecord::Base
  attr_accessible :age, :birth_date, :color, :name, :sex

  validates :age, :color, :name, :sex, presence: true
  validates :age, numericality: { only_integer: true, less_than: 100 }
  validates :sex, inclusion: { in: %w(M F) }

end
