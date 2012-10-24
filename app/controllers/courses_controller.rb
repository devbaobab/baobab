class CoursesController < ApplicationController
  # authorization control
  # load_and_authorize_resource
  # nested:  load_and_authorize_resource, :nested => :article
  
  
  # GET /courses
  # GET /courses.json
  def index
    
    selected_category_id = params[:selected_category]
    
    if selected_category_id.nil?
  
      @courses = Course.all
      authorize! :read, @courses
      @categories = Category.all
      respond_to do |format|
        format.html { render :action => "index", notice: "current_user" } # index.html.erb
        format.json { render json: @courses }
      end
    else
      
      @categories = Category.all
      @courses = Category.find(selected_category_id).courses
      authorize! :read, @courses
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @courses }
      end
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = Course.find(params[:id])
    authorize! :read, @course
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @categories }
    end
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
    @course = Course.new
    authorize! :create, @course
    # TODO static
    #@chapter = @course.chapters.build
    
    2.times do 
      chapter = @course.chapters.build
      2.times { chapter.lectures.build }
    end
    
    #@chapters = @course.chapters
    #@chapters = @course.chapters.build
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/1/edit
  def edit
    
    @course = Course.find(params[:id])
    authorize! :update, @course
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(params[:course])
    authorize! :create, @course
    # @course = Course.create(params[:course])
    # @chapter = @course.chapters.build(params[:chapter])
    # @course.authours << Authour.create!({})
    Authour.create!({:user_id => current_user.id, :course_id => @course.id })
    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render json: @course, status: :created, location: @course }
      else
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.json
  def update
    @course = Course.find(params[:id])
    authorize! :update, @course
    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course = Course.find(params[:id])
    authorize! :destroy, @course
    @course.snapshot = nil
    @course.save
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end
  
  def play
    @course = Course.find(params[:course_id])
    @chapter = @course.chapters.find(params[:chapter_id])
    @lecture = @chapter.lectures.find(params[:lecture_id])
    respond_to do |format|
      format.html # new.html.erb
    end
  end
  

end
