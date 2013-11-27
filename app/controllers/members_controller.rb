class MembersController < ApplicationController

  def index
    @members = Member.all
  # is admin logged in, show the new member page
  # else not be  authorized
  end

  def new
    # check to see see if an admin is logged in
    # otherwise say not authorized
    @member = Member.new
  end

  def create
    # raise params.inspect
    #@user = User.find(params[:member][:user_id].to_i)
    @member = Member.new(params[:member])
    if @member.save
      #redirect_to members_path
      render :json => @member #takes member and passes as a json object
    else
      flash[:error] = @member.errors.messages
      render :new
    end
  end

  def show
    #create a new session with @memember
    @member = Member.find(params[:id])
    #instance variable for dependent section of member form
    #(updates respective dependent associated with member)
    @dependents = @member.dependents
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @member }
    end
  end

  def permalink
    @member = Member.find_by_permalink(params[:permalink])
    redirect_to member_path @member.id
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    replied = {}

    @member = Member.find(params[:id])
    replies = params[:reply]
    if (!replies.empty?)
      replies.each do |k, v|
        replied = Member.find_by_id(k)
        if (v != replied.active)
          replied.active = v
          replied.save
        end
      end

      replies = {}
      replies = params[:interests]
      replies.each do |k, v|
        replied = Member.find_by_id(k)
        replied.interests = v
        replied.save
      end

      @accepted = Member.where(:active => true)
      @declined = Member.where(:active => false)
      @not_responded = Member.where(:active => nil)
      render :thanks
    else
      render "/members/"
    end

    # params members to update.each do |attributes|
    #   find_member_by_id[attributes]
    # end
    # if @member.update_attributes(params[:member])
    #   redirect_to members_path
    # else
    #   flash[:error] = @members.errors.full_messages
    #   render :edit
    # end
  end

  # def destroy
  #   member = Member.find_permalink(params[:id])
  #   member.delete
  #   redirect_to members_path
  # end

  def destroy
    Member.delete(params[:id])
    render nothing: true, status: 200
    flash[:success] = "Member deleted."
  end

end
