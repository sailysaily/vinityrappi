class Wine < ApplicationRecord
  has_one_attached :photo
  has_one_attached :country_photo
  enum category: %i[argentinos italianos españoles californianos]
end
