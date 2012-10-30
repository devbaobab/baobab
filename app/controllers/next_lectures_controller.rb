class NextLecturesController < ApplicationController
  # GET /next_lectures
  # GET /next_lectures.json
  def index
    @next_lectures = NextLecture.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @next_lectures }
    end
  end

  # GET /next_lectures/1
  # GET /next_lectures/1.json
  def show
    @next_lecture = NextLecture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @next_lecture }
    end
  end

  # GET /next_lectures/new
  # GET /next_lectures/new.json
  def new
    @next_lecture = NextLecture.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @next_lecture }
    end
  end

  # GET /next_lectures/1/edit
  def edit
    @next_lecture = NextLecture.find(params[:id])
  end

  # POST /next_lectures
  # POST /next_lectures.json
  def create
    @next_lecture = NextLecture.new(params[:next_lecture])

    respond_to do |format|
      if @next_lecture.save
        format.html { redirect_to @next_lecture, notice: 'Next lecture was successfully created.' }
        format.json { render json: @next_lecture, status: :created, location: @next_lecture }
      else
        format.html { render action: "new" }
        format.json { render json: @next_lecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /next_lectures/1
  # PUT /next_lectures/1.json
  def update
    @next_lecture = NextLecture.find(params[:id])

    respond_to do |format|
      if @next_lecture.update_attributes(params[:next_lecture])
        format.html { redirect_to @next_lecture, notice: 'Next lecture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @next_lecture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /next_lectures/1
  # DELETE /next_lectures/1.json
  def destroy
    @next_lecture = NextLecture.find(params[:id])
    @next_lecture.destroy

    respond_to do |format|
      format.html { redirect_to next_lectures_url }
      format.json { head :no_content }
    end
  end
end
