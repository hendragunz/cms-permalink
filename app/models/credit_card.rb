# == Schema Information
#
# Table name: credit_cards
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  expiry_date :date
#  number      :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class CreditCard < ActiveRecord::Base
  # validation
  validates :name,        presence: true
  validates :number,      presence: true,
                          uniqueness: { case_sensitive: false }
  validates :expiry_date, presence: true
  validate  :check_credit_card_number

  private

    # return true if credit card is valid
    #
    def check_credit_card_number
      s1 = s2 = 0
      cc_number = number.gsub(/ /, '')
      cc_number.to_s.reverse.chars.each_slice(2) do |odd, even|
        s1 += odd.to_i

        double = even.to_i * 2
        double -= 9 if double >= 10
        s2 += double
      end

      unless (s1 + s2) % 10 == 0
        errors.add(:number, "is invalid")
      end
    end

end
