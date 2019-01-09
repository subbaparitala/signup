class User < ApplicationRecord

  has_many :posts, dependent: :destroy 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :avatar, AvatarUploader

 validates_presence_of   :avatar
 validates_integrity_of  :avatar
 validates_processing_of :avatar
end
