class Note < ApplicationRecord
  validates :title, presence: true, length: { minimum: 1, maximum: 20 }
  validates :name, presence: true, length: { minimum: 1, maximum: 20 }
  validates :nickname, presence: true, length: { minimum: 1, maximum: 10 }
  validates :feeling, presence: true, length: { minimum: 1, maximum: 20 }
  validates :message, presence: true, length: { minimum: 1 }
  validate :first_word_uppercase
  validate :title_duplication

  private

  def first_word_uppercase
    if title.present? && title.split.first[0] != title.split.first[0].upcase
      errors.add(:title, "must start with an uppercase letter")
    end
    if name.present? && name.split.first[0] != name.split.first[0].upcase
      errors.add(:name, "must start with an uppercase letter")
    end
    if nickname.present? && nickname.split.first[0] != nickname.split.first[0].upcase
      errors.add(:nickname, "must start with an uppercase letter")
    end
    return unless feeling.present? && feeling.split.first[0] != feeling.split.first[0].upcase

    errors.add(:feeling, "must start with an uppercase letter")
  end

  def title_duplication
    return unless Note.exists?(title:)

    errors.add(:title, "title is already exists, no duplication")
  end
end
