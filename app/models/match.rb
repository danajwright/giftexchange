class Match < ActiveRecord::Base
  attr_accessible :member_id, :secret_santa_id

  belongs_to :member
  belongs_to :secret_santa, class_name: "Member"

end
