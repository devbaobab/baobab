class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    @commentable = find_commentable
    @comments = @commentable.comments
    #@comments = Comment.all

#    respond_to do |format|
#      format.html # index.html.erb
#      format.json { render json: @comments }
#    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
      
      @commentable = find_commentable
      comment_content = params[:comment]
      if comment_content[:content].empty?
        #redirect_to @commentable
        return
      end
      
      @comment = @commentable.comments.build(params[:comment])
      if @comment.save
        flash[:notice] = "Successfully created comment."
        redirect_to :id => nil # [@commentable] #:id => nil
      else
        #render :action => 'new'
      end
      

    # @comment = Comment.new(params[:comment])
    # 
    # respond_to do |format|
    #   if @comment.save
    #     format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
    #     format.json { render json: @comment, status: :created, location: @comment }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @comment.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :no_content }
    end
  end
  
  def create_comment
    @commentable = find_commentable
    @comment = @commentable.comments.build(params[:comment])
    
    if @comment.save
      render :json => @comment 
    else
      render :json => "failed"
    end   
  end
  
  def get_comments
     @commentable = find_commentable
     render :json => @commentable.comments
  end
  
  private

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
  

  
end
