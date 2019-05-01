class Cup < ApplicationRecord
  belongs_to :owner
  validates :name, presence: true
  validate :validate_size

  def validate_size
    arr = ['small', 'medium', 'large']
    if arr.include?(self.size) == false
      errors.add(:size, 'No such cup size!')
    end
  end
end
