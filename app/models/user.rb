# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, length: { in: 1..15 }
  SPECIAL_EMAIL = /\A[\w+-.]+@[\w+-.]+[\w+-.]+\z/i.freeze
  validates :email, presence: true, format: { with: SPECIAL_EMAIL }
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i }
  mount_uploader :image, ImageUploader

  has_secure_password
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
end
