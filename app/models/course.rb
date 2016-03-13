class Course < ActiveRecord::Base
  has_many :course_details
  belongs_to :user
end
