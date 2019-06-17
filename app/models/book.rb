class Book < ApplicationRecord
  validates :title, presence: true
  validates :isbn, presence: true
  validate :check_length

  def check_length
    return errors.add(:isbn, 'is nil, and must be 10 or 13 characters long') if isbn.nil?
    return errors.add(:isbn, 'must be 10 or 13 characters long') unless isbn.size == 10 || isbn.size == 13
  end
end
