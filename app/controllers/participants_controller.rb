class ParticipantsController < ApplicationController
  skip_before_filter :require_login, only: [:index]

  def index
    @accepted = Member.where(:active => true)
    @declined = Member.where(:active => false)
    @not_responded = Member.where(:active => nil)
  end

end
