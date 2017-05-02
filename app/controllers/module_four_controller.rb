class ModuleFourController < ApplicationController
  def index
    @w12assignments = Assignment.where(:course_week_id => 10)
    @w13assignments = Assignment.where(:course_week_id => 11)
    @w14assignments = Assignment.where(:course_week_id => 12)
    @w15assignments = Assignment.where(:course_week_id => 13)
  end
end