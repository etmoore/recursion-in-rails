class User < ActiveRecord::Base

  belongs_to :manager, class_name: "User", foreign_key: :user_id
  has_many :subordinates, class_name: "User"

end
