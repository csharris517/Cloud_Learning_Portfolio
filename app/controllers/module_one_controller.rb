class ModuleOneController < ApplicationController
  def index
    @assignments = Assignment.where(course_week_id: [1,2,3])
    @w1assignments = Assignment.where(course_week_id: 1)
    @w2assignments = Assignment.where(course_week_id: 2)
    @w3assignments = Assignment.where(course_week_id: 3)
  end
end