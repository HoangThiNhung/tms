class Course < ActiveRecord::Base
  has_many :course_details
end
