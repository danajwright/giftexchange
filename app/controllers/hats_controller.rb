class HatsController < ApplicationController
  skip_before_filter :require_login, only: [:index]

  def index
    @hat = Hat.new
    Member.all.each do |m|
      @hat.put(m)
    end

    @santas_list = hat.match

  end
end
