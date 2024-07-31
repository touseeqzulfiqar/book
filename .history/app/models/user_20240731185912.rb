class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # enum role: { admin: 0, manager: 1, user: 2 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
