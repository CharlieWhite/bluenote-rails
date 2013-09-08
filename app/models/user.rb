class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :sent_notes, :class_name => "Note", :foreign_key => "from_user_id"
  has_many :received_notes, :class_name => "Note", :foreign_key => "user_id"

  mount_uploader :avatar, AvatarUploader

  def private_feed
  	received_notes + Note.public
  end

end
