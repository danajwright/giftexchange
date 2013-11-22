class Member < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :interests, :dependent, :user_id
  before_save :create_permalink

  def to_param
       permalink
  end

  private
   def create_permalink
        self.permalink = SecureRandom.urlsafe_base64(8)
   end
end