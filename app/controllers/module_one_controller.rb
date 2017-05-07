class ModuleOneController < ApplicationController
  def index
    @assignments = Assignment.where(id: [1,4])
  end
end