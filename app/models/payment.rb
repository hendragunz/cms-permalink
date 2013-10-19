class Payment < ActiveRecord::Base
  # association
  belongs_to :service
  belongs_to :line_item

  # validation
  validates :service_id, presence: true
  validates :line_item_id, presence: true,
                           uniqueness: { scope: :service_id }


  class << self
    def find_or_build(params)
      service_id    = params[:service_id]
      line_item_id  = params[:line_item_id]

      payment = nil
      payment = self.where(:service_id => service_id, :line_item_id => line_item_id).first if service_id && line_item_id
      payment ||= new
      payment.attributes = params

      # at least return payment
      return payment
    end
  end
end
