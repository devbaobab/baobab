class SubscriptionsController < ApplicationController

  # GET /subscriptions/new
  # GET /subscriptions/new.json
  def new
    @subscription = Subscription.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subscription }
    end
  end


  # POST /subscriptions
  # POST /subscriptions.json
  def create
    @subscription = Subscription.new(params[:subscription])

    respond_to do |format|
      if @subscription.valid?        
        File.open("#{Rails.root}/subscribers.txt",'a') {|f| f.puts(@subscription.email+' '+Time.now.getutc.iso8601) }
        format.html { 
           flash[:notice] = 'e-mail address successfully added to subscription!'
          redirect_to action: "new"
          }
      else
        format.html { 
           flash[:notice] = 'please enter a valid e-mail address!'
          redirect_to action: "new"
          }
      end
    end
  end
end
