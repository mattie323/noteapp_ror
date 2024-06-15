class Note < ApplicationRecord
  validates :title, presence: true, length: { minimum: 1, maximum: 20 }
  validates :name, presence: true, length: { minimum: 1, maximum: 20 }
  validates :nickname, presence: true, length: { minimum: 1, maximum: 10 }
  validates :feeling, presence: true, length: { minimum: 1, maximum: 20 }
  validates :message, presence: true, length: { minimum: 1 }

  validate :title_duplication

  before_save :capitalize_attributes

  private

  def capitalize_attributes
    attributes_to_capitalize.each do |attr|
      self[attr] = self[attr].capitalize if self[attr].present?
    end
  end

  def title_duplication
    return unless Note.exists?(title:)

    errors.add(:title, "title is already exists, no duplication")
  end

  def attributes_to_capitalize
    %w[title name nickname feeling]
  end
end
