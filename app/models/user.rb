class User < ApplicationRecord
  validates :name, presence:true,length:{in: 1..15}
  Special_email = /\A[\w+-.]+@[\w+-.]+[\w+-.]+\z/i
  validates :email, presence:true,format:{with: Special_email}
  validates :password,format:{with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i}
  
  has_secure_password
end
