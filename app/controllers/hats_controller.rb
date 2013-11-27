class HatsController < ApplicationController

  def index
    hat = Hat.new
    Member.all.each do |m|
      hat.put(m)
    end

    @santas_list = hat.match

  end
end
