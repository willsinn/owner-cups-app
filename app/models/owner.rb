class Owner < ApplicationRecord
  has_many :cups
  validates :first_name, presence: true, uniqueness: true
  validates :last_name, presence: true, uniqueness: true
  validate :age_limit

  def full_name
    self.first_name + " " + self.last_name
  end

  def age_limit
    if self.age < 17
      errors.add(:age, 'Too young to be an owner')
    end
  end
end
