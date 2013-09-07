class Note < ActiveRecord::Base

	belongs_to :sent_user, :class_name => "User", :foreign_key => "from_user_id"
	belongs_to :received_user, :class_name => "User", :foreign_key => "user_id"

	scope :public, ->  { where(:user_id => "") }

end
