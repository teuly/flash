class Card < ActiveRecord::Base	
validates :review_date,  presence: true
validates :original_text, presence: true
validates :translated_text, presence: true 
validate :not_equal

def not_equal
errors.add(:base, 'translated_text and original_text cannot be equal.') if translated_text == original_text
end
end
