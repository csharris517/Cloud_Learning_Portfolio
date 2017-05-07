class ModuleFourController < ApplicationController
  def index
    @assignments = Assignment.where(:id => [17,19])
  end
end