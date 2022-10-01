class Product < ApplicationRecord
  has_many :movements
  validates :name, presence: true

  def quantity
    total = 0
    self .movements.each do |movement|
      if movement.movement_type == Movement::MovementTypes[:add]
        total += movement.quantity
      else
        total -= movement.quantity
      end
    end
    return total
  end
end
