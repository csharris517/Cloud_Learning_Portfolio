class ModuleThreeController < ApplicationController
  def index
    @w10assignments = Assignment.where(:course_week_id => 8)
    @w11assignments = Assignment.where(:course_week_id => 9)
  end
end