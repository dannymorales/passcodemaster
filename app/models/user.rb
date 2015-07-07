class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :trackable, :encryptable, :validatable, :confirmable, :lockable, :registerable,
  devise :database_authenticatable, :registerable, :timeoutable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :passes, dependent: :destroy
end
