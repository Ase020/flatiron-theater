class Production < ApplicationRecord
  has_many :crew_members

  validates :title, presence: true
  validate :no_more_musicals

#   Custom validations
  def no_more_musicals
    if genre.downcase == "musical"
      errors.add(:genre, "Sorry, no more musicals!")
    end
  end

end
