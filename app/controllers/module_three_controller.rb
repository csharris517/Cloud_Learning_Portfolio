class ModuleThreeController < ApplicationController
  def index
    @assignments = Assignment.where(:id => [14,16])
  end
end