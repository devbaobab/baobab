class MypagesController < ApplicationController
  
  # GET /mypages/1
  # GET /mypages/1.json
  def show
    @user = current_user #User.find(params[:id])
    @taking_courses = @user.courses
    @offering_courses = Array.new
    
    Authour.where(:user_id => @user.id).each do |authour|
      @offering_courses << Course.find(authour.course_id)
    end
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mypage }
    end
  end
  
  def assign
    @course = Course.find(params[:id])
    if current_user.nil?
      redirect_to @course, notice: "please login first"
    end
    
    @course.assign(current_user.id)
    
    respond_to do |format|
      format.html { redirect_to @course }
      format.json { head :no_content }
    end
    
  end
  
  def unassign
    @course = Course.find(params[:id])
    if current_user.nil?
      redirect_to @course, notice: "please login first"
    end
    
    Course.find(params[:id]).unassign(current_user.id)
    
    respond_to do |format|
      format.html { redirect_to @course }
      format.json { head :no_content }
    end
    
  end

end
