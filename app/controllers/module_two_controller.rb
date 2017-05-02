class ModuleTwoController < ApplicationController
  def index
    @w5assignments = Assignment.where(course_week_id: 4)
    @w6assignments = Assignment.where(course_week_id: 5)
    @w7assignments = Assignment.where(course_week_id: 6)
  end
end