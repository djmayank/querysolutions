class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :questions, dependent: :destroy
has_many :answers,   dependent: :destroy

enum post:{ solver1: 0, member:1, solver2: 2, solver3:3, solver4: 4}
end
