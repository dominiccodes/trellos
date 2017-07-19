class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	# dependent: :destroy will delete all tasks of a deleted user so no orphan tasks
	has_many :tasks, dependent: :destroy
end
