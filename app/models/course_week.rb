class CourseWeek < ActiveRecord::Base
  belongs_to :course_module
  has_many :assignments
end
