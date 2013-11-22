class Member < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :interests, :dependent, :user_id, :active, :member_id
  before_create :create_permalink

  has_many :dependents, :class_name => "Member"
  belongs_to :member

  def to_param
       permalink
  end

  private
   def create_permalink
        self.permalink = SecureRandom.urlsafe_base64(8)
   end

end