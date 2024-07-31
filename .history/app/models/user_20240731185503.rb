class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: { draft: 0, published: 1, archived: 2 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
