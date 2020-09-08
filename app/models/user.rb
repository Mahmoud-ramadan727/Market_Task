class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ROLES = %i[admin employee customer]

  has_many :orders

  def admin?
    return self.role == 'admin'

  end

  def employee?
    return self.role == 'employee'

  end

end
