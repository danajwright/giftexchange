class MembersController < ApplicationController

  def index
    @members = Member.all
  # is admin logged in, show the new member page
  # else be like not authorized
  end

  def new
    # check to see see if an admin is logged in
    # otherwise say not authorized
    @member = Member.new
  end

  def create
    #raise params.inspect

    @user = User.find(params[:member][:user_id].to_i)
    @member = Member.new(params[:member])
    if @member.save
      redirect_to members_path
    else
      flash[:error] = @member.errors.messages
      render :new
    end
  end

  def show
    @member = Member.find(params[:id])
    # create a new session with @memember
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
    @member = Member.find_permalink(params[:id])
    if @member.update_attributes(params[:member])
      redirect_to members_path
    else
      flash[:error] = @members.errors.full_messages
      render :edit
    end
  end

  def destroy
    member = Member.find_permalink(params[:id])
    member.delete
    redirect_to members_path
  end
end
