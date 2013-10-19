class LineItem < ActiveRecord::Base
  # validations
  validates :name, presence: true
  validates :description, presence: true

end
