class CourseModule < ActiveRecord::Base
  belongs_to :course
  has_many :course_weeks
  has_many :assignments, through: :course_weeks
end
