class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :courses
  has_many :course_details
  has_many :posts
  has_many :comments
  has_many :scores
  has_many :exams
end
