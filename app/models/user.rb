class User < ApplicationRecord
  has_secure_password
  has_many :orders

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end

  validates :password, :format => {:with => /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,}\z/}
end
