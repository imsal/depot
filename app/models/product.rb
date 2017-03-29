class Product < ApplicationRecord

  validates :title, :description, :image_url, presence: true

  # ensures that the sellers can't set a product for $0 && ensure that price is a number
  validates :price, numericality: {greater_than_or_equal_to: 0.01}

  validates :title, uniqueness: true, length: { minimum: 10}


  # the allow_blank option is used to avoid from getting multiple error messages when the field is blank.
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }


end
