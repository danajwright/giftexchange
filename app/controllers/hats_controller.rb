class HatsController < ApplicationController
  skip_before_filter :require_login, only: [:index, :show]

  # Uncomment line 8 to show drawing results

  def index
    @hat = Hat.new
    #redirect_to hat_path(1)
  end

  def create
    # Setup some test data:
    #Member.new(:first_name => "John", :last_name => "Smith", :interests => "Tennis" , :dependent => false, :s_key => "nothing", :active => nil, :email => "johnston.sjg@gmail.com", :permalink = "A12345", :user_id, :member_id)

    @members = Member.all
    @hat = Hat.new
    Member.all.each do |m|
      @hat.put(m) if m.active == true
    end

    @hat.match

    @match_list = Match.all

    # store match_list results to the last entry of the match_list DB table

    # render updated results

    render :create
  end

  def new
    # runs post to create
  end

  def show
    @match_list = Match.all
    # access static results stored in the last entry in match_list DB table
    # render static resutls to user
  end

end

