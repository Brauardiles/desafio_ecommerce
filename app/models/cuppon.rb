class Cuppon < ApplicationRecord
  has_and_belongs_to_many :user
  validate :valid_cuppon

  def used_cuppon

  end

  def total_discount(price)

  end

  def valid_cuppon
    if kind == "Unique" && used_count > 0
       errors.add(:base, 'cuppon used')
    elsif User.find_by(user_id: user_id).present
      errors.add(:base, 'cuppon used')
    end
  end

end
