class Course < ActiveRecord::Base
  has_many :course_modules
  has_many :course_weeks, through: :course_modules
end
