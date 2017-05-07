class ModuleTwoController < ApplicationController
  def index
    @assignments = Assignment.where(id: [11,13])
  end
end