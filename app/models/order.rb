class Order < ApplicationRecord
    belongs_to :user
    has_many :product_lists

    belongs_to :generate_token

    validates :billing_name, presence: true
    validates :billing_address, presence: true
    validates :shipping_name, presence: true
    validates :shipping_address, presence: true

    def generate_token 
        self.token = SecureRandom.uuid
    end

    def set_payment_with!(method)
        self.update_columns(payment_method: method)
    end

    def pay!
        self.update_columns(is_paid: true)
    end

end
