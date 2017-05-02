class CourseWeeksController < ApplicationController
  before_action :set_course_week, only: [:show, :edit, :update, :destroy]

  # GET /course_weeks
  # GET /course_weeks.json
  def index
    @course_weeks = CourseWeek.all
  end

  # GET /course_weeks/1
  # GET /course_weeks/1.json
  def show
  end

  # GET /course_weeks/new
  def new
    @course_week = CourseWeek.new
  end

  # GET /course_weeks/1/edit
  def edit
  end

  # POST /course_weeks
  # POST /course_weeks.json
  def create
    @course_week = CourseWeek.new(course_week_params)

    respond_to do |format|
      if @course_week.save
        format.html { redirect_to @course_week, notice: 'Course week was successfully created.' }
        format.json { render :show, status: :created, location: @course_week }
      else
        format.html { render :new }
        format.json { render json: @course_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_weeks/1
  # PATCH/PUT /course_weeks/1.json
  def update
    respond_to do |format|
      if @course_week.update(course_week_params)
        format.html { redirect_to @course_week, notice: 'Course week was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_week }
      else
        format.html { render :edit }
        format.json { render json: @course_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_weeks/1
  # DELETE /course_weeks/1.json
  def destroy
    @course_week.destroy
    respond_to do |format|
      format.html { redirect_to course_weeks_url, notice: 'Course week was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_week
      @course_week = CourseWeek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_week_params
      params.require(:course_week).permit(:week_num, :course_module_id)
    end
end
