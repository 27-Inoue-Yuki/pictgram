# frozen_string_literal: true

module TopicsHelper
  def favorited?(topic)
    !topic.favorite_users.include?(current_user)
  end

  def topic_favorite_count(topic)
    topic.favorites.count
  end
end
