class CourseDetail < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
  has_one :score_final
end
