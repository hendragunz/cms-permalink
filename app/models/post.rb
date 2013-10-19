# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  permalink  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  # validations
  validates :title,   :presence => true
  validates :content, :presence => true

  # callbacks
  before_save :set_permalink

  private

    def set_permalink
      self.permalink = title.try(:parameterize)

      idx = 1
      while Post.find_by_permalink(permalink).present?
        idx += 1
        self.permalink = title.try(:parameterize) + "-#{idx}"
      end
    end
end
