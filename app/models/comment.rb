# frozen_string_literal: true

class Comment < ApplicationRecord
    belongs_to :topic
    validates :topic_id, presence:true
    validates :description, presence:true
end
