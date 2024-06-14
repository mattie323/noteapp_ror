class Note < ApplicationRecord
    validates :title, presence: true, length: { minimum: 1, maximum: 20 }
    validates :body, presence: true, length: { minimum: 5 }
    validates :name, presence: true, length: { minimum: 1, maximum: 15 }
    validate :first_word_uppercase
    validate :title_duplication
  
    private
  
    def first_word_uppercase
      # Assuming you want to check the title for the first word uppercase validation
      if title.present? && title.split.first[0] != title.split.first[0].upcase
        errors.add(:title, "must start with an uppercase letter")
      end
      if name.present? && name.split.first[0] != name.split.first[0].upcase
        errors.add(:name, "must start with an uppercase letter")
      end
    end

    def title_duplication
        if Note.exists?(title: title)
            errors.add(:title, "title is already exists, no duplication")
        end
    end

end
  