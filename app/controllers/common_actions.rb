# frozen_string_literal: true

module CommonActions
  extend ActiveSupport::Concern

  def set_categories
    @categories = Category.all
  end
end
